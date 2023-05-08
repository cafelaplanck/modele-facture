#!/usr/bin/env python3.11
# -*- utf-8 -*-
"""
Générer les instructions LaTeX pour le menu de la Planck
"""

import configparser
import pathlib

import pandas

# Pour gérer la feuille de calcul Google
# https://stackoverflow.com/questions/3287651/download-a-spreadsheet-from-google-drive-workspace-using-python
import csv
import gspread # https://github.com/burnash/gspread

from oauth2client.service_account import ServiceAccountCredentials

