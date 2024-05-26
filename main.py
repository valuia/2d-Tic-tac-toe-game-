from kivy.animation import Animation
from kivy.clock import Clock
from kivymd.app import MDApp
from kivymd.toast import toast
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDRaisedButton
from kivymd.uix.label import MDLabel
from kivymd.uix.screen import MDScreen
from kivymd.uix.toolbar import MDTopAppBar


class GameApp(MDApp):
    def __init__(self):
        super().__init__()

        self.WINNING_CONDITION = None
        self.CURRENT_PLAYER = "X"
        self.WIN = False

    def build(self):
        self.screen = MDScreen()

        main_layout = MDBoxLayout(orientation="vertical", spacing=10, padding=10)

        self.top_bar = MDTopAppBar(title="XO", md_bg_color=(0.96, 0.96, 0.96, 1))
        self.top_bar.left_action_items = [["chevron-left", lambda x: self.Quit_Window("")]]
        self.top_bar.right_action_items = [["restart", lambda button: self.Restart_Game("")]]
        self.top_bar.line_color = (0, 0, 0, 1)
        self.top_bar.specific_text_color = (0, 0, 0, 1)
        self.top_bar.radius = 2.5
        self.top_bar.line_width = 2.5
        main_layout.add_widget(self.top_bar)  # place the top bar to main_layout

        card = MDBoxLayout(orientation="vertical")  # card for paste the btn's
        card.line_color = (0.96, 0.96, 0.96, 1)
        card.line_width = 3
        card.size_hint = (0.55, 0.65)
        card.pos_hint = {"center_x": 0.5, "center_y": 1}

        # make a for loop - for paste btn to the card

        row_1 = MDBoxLayout(orientation="horizontal", line_color=(1, 1, 1, 1))
        row_2 = MDBoxLayout(orientation="horizontal", line_color=(1, 1, 1, 1))
        row_3 = MDBoxLayout(orientation="horizontal", line_color=(1, 1, 1, 1))
        for i in range(3):
            btn1 = MDRaisedButton(size_hint=(0.5, 1), md_bg_color=(0, 0, 0, 1), line_color=(1, 1, 1, 1),
                                  on_release=self.Btn_CLicked, theme_text_color="Custom", font_size="40px")
            btn2 = MDRaisedButton(size_hint=(0.5, 1), md_bg_color=(0, 0, 0, 1), line_color=(1, 1, 1, 1),
                                  on_release=self.Btn_CLicked, theme_text_color="Custom", font_size="40px")
            btn3 = MDRaisedButton(size_hint=(0.5, 1), md_bg_color=(0, 0, 0, 1), line_color=(1, 1, 1, 1),
                                  on_release=self.Btn_CLicked, theme_text_color="Custom", font_size="40px")
            row_1.add_widget(btn1)
            row_2.add_widget(btn2)
            row_3.add_widget(btn3)
        card.add_widget(row_1)
        card.add_widget(row_2)
        card.add_widget(row_3)

        main_layout.add_widget(card)  # place card to main_layout

        # All btn's
        self.b0 = row_1.children[2]  # row 1
        self.b1 = row_1.children[1]
        self.b2 = row_1.children[0]

        self.b3 = row_2.children[2]  # row 2
        self.b4 = row_2.children[1]
        self.b5 = row_2.children[0]

        self.b6 = row_3.children[2]  # row 3
        self.b7 = row_3.children[1]
        self.b8 = row_3.children[0]

        self.WINNING_CONDITION = [[self.b0, self.b1, self.b2], [self.b3, self.b4, self.b5], [self.b6, self.b7, self.b8],
                                  [self.b0, self.b3, self.b6], [self.b1, self.b4, self.b7], [self.b2, self.b5, self.b8],
                                  [self.b0, self.b4, self.b8], [self.b2, self.b4, self.b6]]

        player_turns_card = MDBoxLayout(orientation="vertical",
                                        md_bg_color=(0, 0, 1, 1))  # this player card contain the turn of the player
        player_turns_card.size_hint = (1, 0.05)

        self.lbl = MDLabel(text=f"Current-Player : {self.CURRENT_PLAYER}", font_style="H6",
                           pos_hint={"center_x": 0.5}, halign="center")
        player_turns_card.add_widget(self.lbl)

        main_layout.add_widget(player_turns_card)

        self.screen.add_widget(main_layout)

        Clock.schedule_interval(self.Check_Win, 0.1)

        return self.screen

    def Quit_Window(self, param):
        self.stop()

    def show_menu_settings(self, button, param):
        pass

    def Player_Turn(self):
        if self.CURRENT_PLAYER == "X":
            self.CURRENT_PLAYER = "O"
            self.clicked_btn.text_color = (0.05, 0.27, 0.63, 1)
            self.lbl.text = "Current-Player : O"
            self.lbl.md_bg_color = (0.71, 0.10, 0.10, 1)
        elif self.CURRENT_PLAYER == "O":
            self.CURRENT_PLAYER = "X"
            self.clicked_btn.text_color = (0.71, 0.10, 0.10, 1)
            self.lbl.text = "Current-Player : X"
            self.lbl.md_bg_color = (0.05, 0.27, 0.63, 1)
        else:
            pass

    def Btn_CLicked(self, instance):
        self.clicked_btn = instance
        print(instance.text)

        if not instance.text:  # btn text ""  # blank
            print("blank")
            instance.text = self.CURRENT_PLAYER
            self.Player_Turn()

        else:
            pass

    def Check_Win(self, dt):

        if not self.WIN:
            for condition in self.WINNING_CONDITION:
                a, b, c = condition[0], condition[1], condition[2]
                print(a.text, b.text, c.text)

                if a.text == b.text == c.text and a.text == b.text == c.text != "":
                    toast(f"Win {a.text}")
                    self.lbl.text = f"Win {a.text}"
                    self.WIN = True
                    a.md_bg_color = a.text_color  # bg color the winner
                    b.md_bg_color = b.text_color
                    c.md_bg_color = c.text_color

                    a.text_color = (1, 1, 1, 1)  # fg color to winner as white
                    b.text_color = (1, 1, 1, 1)
                    c.text_color = (1, 1, 1, 1)

                    Clock.schedule_once(self.Restart_Game, 0.7)
                    break
                elif self.b0.text != "" and self.b1.text != "" and self.b2.text != "" and self.b3.text != "" and self.b4.text != "" and self.b5.text != "" and self.b6.text != "" and self.b7.text != "" and self.b8.text != "":
                    toast("Draw")
                    self.lbl.text = f"Draw {a.text}"
                    self.animate_bg((1, 1, 1, 1))
                    self.Restart_Game("")

                    break

        elif self.WIN:
            print("Win ")


        else:
            pass

    def animate_bg(self, bg_color):

        anim = Animation(md_bg_color=bg_color, duration=0.2)
        anim.start(self.b0)
        anim.start(self.b1)
        anim.start(self.b2)
        anim.start(self.b3)
        anim.start(self.b4)
        anim.start(self.b5)
        anim.start(self.b6)
        anim.start(self.b7)
        anim.start(self.b8)

    def Restart_Game(self, dt):
        self.b0.text = ""
        self.b1.text = ""
        self.b2.text = ""
        self.b3.text = ""
        self.b4.text = ""
        self.b5.text = ""
        self.b6.text = ""
        self.b7.text = ""
        self.b8.text = ""

        self.WIN = False

        self.b0.md_bg_color = (0, 0, 0, 1)
        self.b1.md_bg_color = (0, 0, 0, 1)
        self.b2.md_bg_color = (0, 0, 0, 1)
        self.b3.md_bg_color = (0, 0, 0, 1)
        self.b4.md_bg_color = (0, 0, 0, 1)
        self.b5.md_bg_color = (0, 0, 0, 1)
        self.b6.md_bg_color = (0, 0, 0, 1)
        self.b7.md_bg_color = (0, 0, 0, 1)
        self.b8.md_bg_color = (0, 0, 0, 1)

        self.lbl.text = f"Current-Player:{self.CURRENT_PLAYER}"


if __name__ == '__main__':
    GameApp().run()
