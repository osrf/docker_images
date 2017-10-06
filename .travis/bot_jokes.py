import chuck
import sys


def get_chuck_norris_joke():
    """Get a frendly and nerdy chuck norris joke"""
    if 'chuck' in sys.modules:
        cn = chuck.ChuckNorris()
        data = cn.random(
            categories=['nerdy'], exclude_categories=['explicit'])
    return data.joke


def get_bot_joke(joke_type='chuck_norris'):
    """Get a random joke to tell"""
    message = "Beep Boop Bop, I am a bot!"
    if joke_type == 'chuck_norris':
        if 'chuck' in sys.modules:
            joke = get_chuck_norris_joke()
            message += " Please enjoy a random joke:  \n" + joke
    return message
