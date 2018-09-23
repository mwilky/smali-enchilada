.class public Lcom/android/server/OemSceneGameModeDialog;
.super Lcom/android/server/OemSceneGameModeView;
.source "OemSceneGameModeDialog.java"


# static fields
.field private static final CHECK_IC_ANIM_DURATION:I = 0x1e0

.field public static final NOTIFY_STYLE_BLOCK:I = 0x1

.field public static final NOTIFY_STYLE_HEADSUP:I = 0x0

.field public static final NOTIFY_STYLE_WORDS:I = 0x2

.field private static final POP_WIN_Y_OFFSET:I = -0xf0

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeDialog"


# instance fields
.field private mDismiss:Landroid/widget/TextView;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field private mDontShowAgainText:Landroid/widget/TextView;

.field private mIconCheck1:Landroid/widget/ImageView;

.field private mIconCheck2:Landroid/widget/ImageView;

.field private mIconCheck3:Landroid/widget/ImageView;

.field private mIncomingAutoOffHook:Landroid/widget/Switch;

.field private mIncomingCallNotify:Landroid/widget/Switch;

.field private mMoreSettingsToggle:Landroid/view/View;

.field private mNotifyStyleDetail:Landroid/widget/TextView;

.field private mNotifyStyleToggle:Landroid/view/View;

.field private mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    new-instance v0, Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setElevation(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Lcom/android/server/OemSceneGameModeView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/OemSceneGameModeDialog$8;-><init>(Lcom/android/server/OemSceneGameModeDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v4, 0x1e0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/OemSceneGameModeDialog;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$9;

    invoke-direct {v3, p0, v2}, Lcom/android/server/OemSceneGameModeDialog$9;-><init>(Lcom/android/server/OemSceneGameModeDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v4, 0x3c0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/OemSceneGameModeDialog;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    const v1, 0x506002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public updateNotifyType()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070017

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c001e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c0020

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while checking notify style"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070018

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OemSceneGameModeDialog$1;-><init>(Lcom/android/server/OemSceneGameModeDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateView()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070002

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070003

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070004

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    const v1, 0x5060004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x507000f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$2;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070010

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$3;

    invoke-direct {v5, p0}, Lcom/android/server/OemSceneGameModeDialog$3;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v5, 0x5070011

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$4;

    invoke-direct {v5, p0}, Lcom/android/server/OemSceneGameModeDialog$4;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v5, 0x507000a

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_notifications_3rd_calls"

    invoke-static {v4, v5, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$5;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$5;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v6, 0x507000c

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "game_mode_answer_no_incallui"

    invoke-static {v5, v6, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v1, v3

    nop

    :cond_3
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneGameModeDialog$6;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x5070000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$7;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneGameModeDialog$7;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    return-void
.end method
