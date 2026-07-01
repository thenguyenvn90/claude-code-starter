![Claude Code Starter: template sẵn-sàng-chạy gồm CLAUDE.md, .claude/settings.json, rules và các extras tùy chọn](assets/cover.svg)

# Claude Code Starter (Tiếng Việt)

> 🇻🇳 Tiếng Việt (file này) · 🇬🇧 [English](README.md)

**Một template sẵn-sàng-chạy để bắt đầu bất kỳ dự án nào với [Claude Code](https://claude.ai/claude-code).** Clone, gõ `claude`, và bắt đầu build trên một nền mặc định hợp lý: `CLAUDE.md` điền-vào-là-xong, quyền bảo mật chặn lệnh nguy hiểm, rules chất lượng + bảo mật, và các [extras](extras/) opt-in (status line, hooks, sandbox, skills, subagents) chỉ thêm khi cần.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Starter-orange)](https://claude.ai/claude-code)
[![Install as plugin](https://img.shields.io/badge/Install-as%20plugin-blue)](#extras-tùy-chọn)
[![Guides](https://img.shields.io/badge/Guides-ongboit.com-ff7f00)](https://ongboit.com/)

Hợp cho mọi người: dev, người làm nội dung, marketer, và bất kỳ ai đang học Claude Code.

### Vì sao nên dùng

- **Giảm lỗi AI ngay từ mặc định.** Rules hành vi trong `.claude/rules/AGENT.md` xây trên [4 nguyên tắc của Andrej Karpathy](https://github.com/multica-ai/andrej-karpathy-skills): Claude nói rõ giả định, giữ thay đổi tối giản và đúng phạm vi, tự kiểm chứng thay vì đoán.
- **An toàn từ prompt đầu tiên.** `.claude/settings.json` chặn lệnh phá hoại và hỏi trước khi `git push`; rule bảo mật + hook tùy chọn giữ `.env` và key khỏi tầm với của Claude.
- **Đầy đủ nhưng opt-in.** Phần lõi đủ để bắt đầu; còn lại nằm trong `extras/`, mỗi cái có README + link bài hướng dẫn, copy đúng thứ bạn cần.
- **Không kén ngôn ngữ.** Python, Go, JS, Ruby, hay không code gì cả. Điền Tech Stack + Commands là chạy.

## Bốn nguyên tắc

![Bốn nguyên tắc: Think Before Coding, Simplicity First, Surgical Changes, Goal-Driven Execution](assets/principles.svg)

Bốn nguyên tắc này (phỏng theo repo Karpathy) là trái tim của `.claude/rules/AGENT.md`:

1. **Think Before Coding** — nói rõ giả định, nêu tradeoff, hỏi khi chưa chắc thay vì đoán.
2. **Simplicity First** — viết đúng lượng code tối thiểu giải quyết vấn đề, không vẽ vời.
3. **Surgical Changes** — chỉ đụng thứ liên quan tới yêu cầu, không "sửa dạo" code xung quanh.
4. **Goal-Driven Execution** — định nghĩa "thế nào là xong", rồi kiểm chứng từng khẳng định (file có thật? test có chạy?) trước khi nói "done".

## Dành cho ai

- **Mới dùng Claude Code** — có sẵn setup chạy được + tutorial 10 bước (`FIRST-PROMPTS.md`) thay vì một folder trống.
- **Dev** — thả `.claude/` + `CLAUDE.md` vào repo bất kỳ, chạy `/init`, Claude làm việc có guardrail + rule chất lượng ngay từ đầu.
- **Người làm nội dung & marketer** — cùng bộ kỷ luật (không bịa, human-in-the-loop, xử lý file an toàn) áp cho cả viết lách và automation, không chỉ code.

## Bắt đầu nhanh (3 phút)

**Cần trước:** [đã cài Claude Code](https://ongboit.com/cai-dat-claude-code/) (khuyên gói Pro $20/tháng) + Git.

```bash
# Cách A — clone
git clone https://github.com/thenguyenvn90/claude-code-starter.git my-project
cd my-project

# Cách B — bấm "Use this template" trên GitHub rồi clone repo của bạn
```

Rồi:

```bash
claude          # mở Claude Code
/init           # để Claude đọc dự án và tự điền CLAUDE.md
# Bắt đầu build: copy 1 prompt trong FIRST-PROMPTS.md hoặc mô tả điều bạn muốn.
```

## Bên trong có gì

| File | Công dụng |
|------|---------|
| `CLAUDE.md` | "Bộ não" dự án. Claude đọc mỗi phiên. Sửa cho khớp dự án của bạn. |
| `.claude/settings.json` | Quyền bảo mật. Chặn lệnh nguy hiểm, hỏi trước khi git push. |
| `.claude/rules/AGENT.md` | Guidelines hành vi (4 nguyên tắc): Claude nên suy nghĩ và sửa code thế nào. |
| `.claude/rules/quality.md` | Quy tắc chất lượng code, áp tự động. |
| `.claude/rules/security.md` | Secrets, validate input, và kiểm code AI sinh ra. |
| `.claude/rules/multi-agent.md` | Quy tắc khi chạy nhiều subagent song song. |
| `.gitignore` | Giữ secret và config cá nhân khỏi git. |
| `FIRST-PROMPTS.md` | 10 prompt copy-paste để build app đầu tiên từng bước. |
| `extras/` | **Tùy chọn**: status line, hooks, sandbox, skills, subagents. Xem dưới. |

## Extras (tùy chọn)

![Extras: một lõi dự án bao quanh bởi 5 add-on opt-in — statusline, hooks, sandbox, skills, subagents](assets/extras.svg)

Phần lõi ở trên là đủ để bắt đầu. Khi cần thêm, `extras/` có các add-on opt-in — mỗi cái có README riêng và link
bài hướng dẫn đầy đủ trên ongboit.com. Chỉ copy cái bạn cần.

| Extra | Làm gì | Bài |
|---|---|---|
| [`extras/statusline/`](extras/statusline/) | Thanh trạng thái: model · %context · git | [Status line](https://ongboit.com/claude-code-status-line/) |
| [`extras/hooks/`](extras/hooks/) | Hook chặn đọc `.env` / key | [Hooks](https://ongboit.com/claude-code-hooks/) |
| [`extras/sandbox/`](extras/sandbox/) | Chạy bash trong sandbox (bớt hỏi, an toàn hơn) | [Sandbox](https://ongboit.com/claude-code-sandbox/) |
| [`extras/skills/`](extras/skills/) | Skill mẫu (`commit-helper`) | [Skills](https://ongboit.com/claude-code-skills/) |
| [`extras/subagents/`](extras/subagents/) | Subagent mẫu (`code-reviewer`) | [Subagent best practices](https://ongboit.com/claude-code-subagent-best-practices/) |

**Cài dạng plugin (tùy chọn):** các skill chọn lọc cũng cài được qua plugin:

```
/plugin marketplace add thenguyenvn90/claude-code-starter
/plugin install claude-code-starter
```

## Tùy biến cho dự án của bạn

Sửa `CLAUDE.md` và điền: **Tên dự án · Tech Stack · Commands (chạy/build/test) · Đang làm gì**. Phần còn lại
(Decision Flow, Rules, Human-in-the-Loop) chạy được luôn không cần chỉnh.

## Lệnh thiết yếu

| Lệnh | Làm gì |
|------|--------|
| `/init` | Tự sinh CLAUDE.md từ codebase |
| `/help` | Xem mọi lệnh |
| `/compact` | Nén hội thoại khi dài (nên gõ `/compact focus on <chủ đề>`) |
| `/clear` | Bắt đầu hội thoại mới |
| `/cost` | Xem token đã dùng |
| `Shift+Tab` | Đổi mode Normal / Plan / Auto |

## Học thêm

**Cơ bản:** [Claude Code là gì](https://ongboit.com/claude-code-la-gi/) · [Cài đặt](https://ongboit.com/cai-dat-claude-code/) · [CLAUDE.md & .claude/](https://ongboit.com/claude-md-la-gi/) · [Permission modes](https://ongboit.com/claude-code-permission-modes/) · [Tiết kiệm token](https://ongboit.com/tiet-kiem-token-claude-code/) · [Roadmap](https://ongboit.com/claude-code-roadmap/)

**Extras & power features:** [Status line](https://ongboit.com/claude-code-status-line/) · [Hooks](https://ongboit.com/claude-code-hooks/) · [Sandbox](https://ongboit.com/claude-code-sandbox/) · [Skills](https://ongboit.com/claude-code-skills/) · [Subagent best practices](https://ongboit.com/claude-code-subagent-best-practices/) · [Bẫy API key](https://ongboit.com/claude-code-anthropic-api-key-env-trap/) · [Spec-driven](https://ongboit.com/claude-code-spec-driven/) · [Agent SDK](https://ongboit.com/claude-agent-sdk/) · [Claude Code trong Slack](https://ongboit.com/claude-code-slack/)

## FAQ

**Không biết code có dùng được không?** Được. Claude Code viết code cho bạn; bạn mô tả bằng tiếng Việt.
**Có free không?** Template free. Claude Code cần gói trả phí (khuyên Pro $20/tháng).
**Đã có dự án rồi?** Copy folder `.claude/` và `CLAUDE.md` vào dự án hiện có, chạy `/init`.
**Dùng cho Python/Go/Ruby được không?** Được, template language-agnostic. Chỉ sửa Tech Stack + Commands trong CLAUDE.md.

## License

MIT — dùng thoải mái.

---

Made with Claude Code by [Ông Bố IT](https://ongboit.com) 🇻🇳
