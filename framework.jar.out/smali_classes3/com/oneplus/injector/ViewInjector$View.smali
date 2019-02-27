.class public Lcom/oneplus/injector/ViewInjector$View;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/injector/ViewInjector$View$Element;
    }
.end annotation


# static fields
.field private static final ELEMENTS_NOOVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_NOSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_OVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_SCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ViewInjector"

.field public static isInjection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearElements()V
    .locals 1

    .line 158
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 160
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 161
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    return-void
.end method

.method private static isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 6
    .param p0, "stacks"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Lcom/oneplus/injector/ViewInjector$View$Element;",
            ">;)Z"
        }
    .end annotation

    .line 144
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/injector/ViewInjector$View$Element;>;"
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 146
    .local v2, "element":Lcom/oneplus/injector/ViewInjector$View$Element;
    invoke-virtual {v2}, Lcom/oneplus/injector/ViewInjector$View$Element;->getPosition()I

    move-result v3

    .line 147
    .local v3, "pos":I
    array-length v4, p0

    if-le v4, v3, :cond_0

    .line 148
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/injector/ViewInjector$View$Element;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    goto :goto_1

    .line 153
    .end local v2    # "element":Lcom/oneplus/injector/ViewInjector$View$Element;
    .end local v3    # "pos":I
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    :goto_1
    return v0
.end method

.method public static onAwakenScrollBars(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 113
    sget-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 114
    return v1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 117
    .local v0, "result":Z
    const-string v2, "longshot"

    .line 118
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 119
    .local v2, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v2, :cond_4

    .line 120
    invoke-virtual {v2}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 123
    .local v3, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    const-string v1, "ViewInjector"

    const-string v4, "onAwakenScrollBars:no more scroll down"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object v4, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    invoke-virtual {v2, v1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    .line 137
    :cond_3
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 140
    .end local v3    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_4
    return v0
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOverScroll"    # Z

    .line 54
    sget-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    const-string v0, "longshot"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 59
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {v0}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    .line 61
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 63
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "ViewInjector"

    const-string v4, "onOverScrolled:no more scroll down"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    .line 76
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 79
    .end local v1    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_3
    return-void
.end method

.method public static onScrollChanged(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "canScrollVertically"    # Z

    .line 82
    sget-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    const-string v0, "longshot"

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 87
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/oneplus/longshot/LongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    .line 89
    .local v1, "result":Z
    if-eqz v1, :cond_3

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 91
    .local v2, "stacks":[Ljava/lang/StackTraceElement;
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v3, Lcom/oneplus/injector/ViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/ViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    if-nez p1, :cond_2

    .line 102
    const-string v3, "ViewInjector"

    const-string v4, "onScrollChanged:no more scroll down"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    .line 105
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyLongshotScroll(Z)V

    .line 107
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/ViewInjector$View;->clearElements()V

    .line 110
    .end local v1    # "result":Z
    .end local v2    # "stacks":[Ljava/lang/StackTraceElement;
    :cond_3
    return-void
.end method

.method public static onUnscrollableView(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    sget-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    const-string v0, "longshot"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 34
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/oneplus/longshot/LongScreenshotManager;->onUnscrollableView()V

    .line 37
    :cond_1
    return-void
.end method

.method public static setScrolledViewTop(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "top"    # I

    .line 42
    sget-boolean v0, Lcom/oneplus/injector/ViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    const-string v0, "longshot"

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 47
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0, p1}, Lcom/oneplus/longshot/LongScreenshotManager;->notifyScrollViewTop(I)V

    .line 50
    :cond_1
    return-void
.end method
