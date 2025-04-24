function mommy() {
  case "$1" in
    tease)
      shift
      git status
      ;;
    cuddle)
      shift
      git add "$@"
      ;;
    kiss)
      shift
      git commit -m "$*"
      ;;
    swallow)
      shift
      git pull origin "$@"
      ;;
    peg)
      shift
      git push origin "$@"
      ;;
    choke)
      shift
      git reset --hard "$@"
      ;;
    gag)
      git clean -fd
      ;;
    ride)
      shift
      git checkout "$@"
      ;;
    spit)
      git stash
      ;;
    moan)
      git log --oneline --graph
      ;;
    beg)
      shift
      git fetch "$@"
      ;;
    raw)
      git merge
      ;;
    *)
      echo "🔞 Unknown mommy command: $1"
      echo "Use with protection 😏. Available options:"
      echo " tease      -> git status"
      echo " cuddle     -> git add"
      echo " kiss       -> git commit -m"
      echo " swallow    -> git pull"
      echo " peg        -> git push"
      echo " choke      -> git reset --hard"
      echo " gag        -> git clean -fd"
      echo " ride       -> git checkout"
      echo " spit       -> git stash"
      echo " moan       -> git log --oneline --graph"
      echo " beg        -> git fetch"
      echo " raw        -> git merge"
      ;;
  esac
}
