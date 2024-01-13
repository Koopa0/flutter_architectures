# Bloc 架構解釋與流程圖

## Bloc 架構概覽
Bloc（Business Logic Component）架構是一種用於分離業務邏輯和用戶介面（UI）的模式。它主要包含三個核心部分：

- **Event（事件）**：用戶與 UI 的互動會觸發事件。這些事件被傳遞給 Bloc 來處理。
- **State（狀態）**：Bloc 根據接收到的事件處理業務邏輯後，會產生新的狀態。
- **Bloc**：業務邏輯組件，用於接收事件並產生新的狀態。

## 計數器應用程序流程

1. **用戶交互**
    - 當用戶點擊增加按鈕時：
        - 觸發 `Increment` 事件。
    - 當用戶點擊減少按鈕時：
        - 觸發 `Decrement` 事件。

2. **CounterBloc 接收事件**
    - 當接收到 `Increment` 事件時：
        - Bloc 將計數器的值增加 1。
    - 當接收到 `Decrement` 事件時：
        - Bloc 將計數器的值減少 1。

3. **產生新的狀態**
    - Bloc 產生一個新的 `CounterValue` 狀態，包含更新後的計數器值。

4. **UI 響應狀態變化**
    - `BlocBuilder` 在 `CounterPage` 中監聽 Bloc 狀態的變化。
    - 當狀態變化時，UI 重建以顯示新的計數器值。

5. **畫面更新**
    - UI 顯示新的計數器值。
