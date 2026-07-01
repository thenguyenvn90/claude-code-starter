# Claude Code Starter (Tiếng Việt)

> 🇻🇳 Tiếng Việt (file này) · 🇬🇧 [English](README.md)

Một template sẵn-sàng-chạy để bắt đầu bất kỳ dự án nào với Claude Code. Clone, gõ `claude`, và bắt đầu build —
rồi thêm các [extras](extras/) chọn lọc (status line, hooks, sandbox, skills, subagents) khi cần.

Hợp cho mọi người: dev, người làm nội dung, marketer, và bất kỳ ai đang học Claude Code.

Phần guidelines lõi trong `.claude/rules/AGENT.md` xây trên [4 nguyên tắc của Andrej Karpathy](https://github.com/multica-ai/andrej-karpathy-skills)
để giảm lỗi khi AI code (Think Before Coding · Simplicity First · Surgical Changes · Goal-Driven Execution).

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
