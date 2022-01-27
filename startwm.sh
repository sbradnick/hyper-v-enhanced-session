#PREF_SESSION='gnome'
#PREF_SESSION='icewm'
#PREF_SESSION='kde'
#PREF_SESSION='xfce'

if [[ -e ${HOME}/.xsession ]];
then
  # PREF_SESSION='[gnome|icewm|kde|xfce]'
  . ${HOME}/.xsession
fi

printf "script: '%s' with PREF_SESSION: '%s' was run via shell: '%s', date: '%s'.\n" "$(basename $0)" "$PREF_SESSION" "$SHELL" "$(date)" >> ${HOME}/$(basename $0).txt

if [[ -e /usr/bin/gnome-session && $PREF_SESSION == "gnome" ]];
then
  /usr/bin/gnome-session ;
elif [[ -e /usr/bin/startplasma-x11 && $PREF_SESSION = "kde" ]];
then
  /usr/bin/startplasma-x11 ;
elif [[ -e /usr/bin/startxfce4 && $PREF_SESSION == "xfce" ]];
then
  /usr/bin/startxfce4 ;
elif [[ -e /usr/bin/icewm-session && $PREF_SESSION == "icewm" ]];
then
  /usr/bin/icewm-session ;
else
  xmessage "IS 'PREF_SESSION' ($PREF_SESSION) SET?"
fi
