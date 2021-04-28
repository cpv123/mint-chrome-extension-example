component Main {
  state counter = 0

  style base {
    text-align: center;
    padding: 12px;
  }

  style counterText {
    margin: 10px 0;
    font-size: 16px;
  }

  style buttonStyle {
    background: none;
    border: 1px solid rgba(69, 159, 86, 0.5);
    border-radius: 4px;
    text-transform: uppercase;
    padding: 6px;
    width: 100px;
    &:hover {
      cursor: pointer;
      background: rgba(69, 159, 86, 0.1);
      border-color: rgba(69, 159, 85);
    }
  }

  fun increment {
    next { counter = counter + 1 }
  }

  fun decrement {
    next { counter = counter - 1 }
  }

  fun render {
    <div::base>
      <button::buttonStyle onClick={increment}>
        "Increment"
      </button>

      <div::counterText>
        <{ Number.toString(counter) }>
      </div>

      <button::buttonStyle onClick={decrement}>
        "Decrement"
      </button>
    </div>
  }
}
