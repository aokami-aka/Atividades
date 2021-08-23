#!/bin/bash

ls $1 2>/dev/null 1>/dev/null && echo "SIM" || echo "NÃO"
ls $2 2>/dev/null 1>/dev/null && echo "SIM" || echo "NÃO"
ls $3 2>/dev/null 1>/dev/null && echo "SIM" || echo "NÃO"
