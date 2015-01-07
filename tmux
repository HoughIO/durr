setw synchronize-panes on
setw synchronize-panes off

# rename session
C-b $
tmux rename-session -t $CURRENTNAME $NEWNAME
