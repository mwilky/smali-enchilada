.class public Lcom/android/server/OemSceneGameModePanelPopupWindow;
.super Landroid/widget/PopupWindow;
.source "OemSceneGameModePanelPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanelPopupWindow"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mOptionBlock:Landroid/view/View;

.field private mOptionBlockIcon:Landroid/view/View;

.field private mOptionHeadsup:Landroid/view/View;

.field private mOptionHeadsupIcon:Landroid/view/View;

.field private mOptionWeak:Landroid/view/View;

.field private mOptionWeakIcon:Landroid/view/View;

.field private mOwner:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "owner"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    .line 47
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setHeight(I)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setWidth(I)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setOutsideTouchable(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setFocusable(Z)V

    .line 51
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x5090005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->initView()V

    .line 55
    return-void
.end method

.method private initView()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x5070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContentView:Landroid/view/View;

    const v1, 0x507001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/view/View;

    .line 67
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsup:Landroid/view/View;

    const/4 v1, -0x2

    if-ne p1, v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeak:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlock:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_block_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "OemSceneGameModePanelPopupWindow"

    const-string v1, "Error while setting notify style"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 108
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    .line 109
    return-void
.end method

.method public updateView(I)V
    .locals 3
    .param p1, "notifyType"    # I

    .line 70
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-nez p1, :cond_0

    .line 71
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionHeadsupIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionWeakIcon:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanelPopupWindow;->mOptionBlockIcon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "OemSceneGameModePanelPopupWindow"

    const-string v1, "Error while checking notify style"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void
.end method
