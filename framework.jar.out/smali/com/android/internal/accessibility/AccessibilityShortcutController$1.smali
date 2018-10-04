.class Lcom/android/internal/accessibility/AccessibilityShortcutController$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->access$000(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I

    move-result v0

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    :cond_0
    return-void
.end method
