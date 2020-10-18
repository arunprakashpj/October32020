# submenu
submenu () {
  local PS3='Please enter your choice '
  local options=("Create" "Delete" "Back")
  local opt
  select opt in "${options[@]}"
  do
      case $opt in
          "Create")
              echo "Lets create"
              sh ./github-create-repo
              ;;
          "Delete")
              echo "To be filled"
              ;;
          "Back")
              return
              ;;
          *) echo "invalid option $REPLY";;
      esac
  done
}

# main menu
PS3='Please choose your target VCR: '
options=("Github VCR " "GitLab VCR" "Other")
select opt in "${options[@]}"
do
    case $opt in
        "Github")
            echo "You have selected Github VCR"
            submenu
            ;;
        "GitLab")
            echo "You have selected Gitlab VCR"
            submenu
            ;;
        "Other")
            echo "You have selected other"
            submenu
            ;;
         "Quit")
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done