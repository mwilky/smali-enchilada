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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "panel"    # Lcom/android/server/OemSceneGameModePanel;
    .param p4, "animate"    # Z

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    .line 63
    new-instance v0, Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    .line 64
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setElevation(F)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 41
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 41
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 41
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .line 196
    invoke-super {p0}, Lcom/android/server/OemSceneGameModeView;->onAttachedToWindow()V

    .line 197
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 199
    .local v0, "animDrawable1":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 200
    .local v1, "animDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 202
    .local v2, "animDrawable3":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 203
    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$8;

    invoke-direct {v3, p0, v1}, Lcom/android/server/OemSceneGameModeDialog$8;-><init>(Lcom/android/server/OemSceneGameModeDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v4, 0x1e0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/OemSceneGameModeDialog;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$9;

    invoke-direct {v3, p0, v2}, Lcom/android/server/OemSceneGameModeDialog$9;-><init>(Lcom/android/server/OemSceneGameModeDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    const-wide/16 v4, 0x3c0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/OemSceneGameModeDialog;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    .end local v0    # "animDrawable1":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "animDrawable2":Landroid/graphics/drawable/AnimationDrawable;
    .end local v2    # "animDrawable3":Landroid/graphics/drawable/AnimationDrawable;
    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    const v1, 0x506002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :goto_0
    return-void
.end method

.method public updateNotifyType()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070017

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 74
    .local v0, "notifyStyle":I
    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c001e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50c0020

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while checking notify style"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070018

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    .line 86
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OemSceneGameModeDialog$1;-><init>(Lcom/android/server/OemSceneGameModeDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method public updateView()V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070002

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070003

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070004

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck1:Landroid/widget/ImageView;

    const v1, 0x5060004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIconCheck3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x507000f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$2;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$2;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070010

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    .line 122
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

    .line 125
    .local v0, "showDetail":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$3;

    invoke-direct {v5, p0}, Lcom/android/server/OemSceneGameModeDialog$3;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v5, 0x5070011

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    .line 136
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$4;

    invoke-direct {v5, p0}, Lcom/android/server/OemSceneGameModeDialog$4;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v5, 0x507000a

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    .line 146
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

    .line 149
    .local v4, "inc_call_notify":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingCallNotify:Landroid/widget/Switch;

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$5;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$5;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v6, 0x507000c

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    .line 161
    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "game_mode_answer_no_incallui"

    invoke-static {v5, v6, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v3, :cond_3

    move v1, v3

    nop

    .line 165
    .local v1, "inc_call_auto_offhook":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mIncomingAutoOffHook:Landroid/widget/Switch;

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$6;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneGameModeDialog$6;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const/high16 v3, 0x5070000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    .line 177
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    new-instance v3, Lcom/android/server/OemSceneGameModeDialog$7;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneGameModeDialog$7;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    .line 192
    return-void
.end method
