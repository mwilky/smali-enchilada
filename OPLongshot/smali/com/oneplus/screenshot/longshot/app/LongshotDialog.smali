.class public Lcom/oneplus/screenshot/longshot/app/LongshotDialog;
.super Landroid/app/Dialog;
.source "LongshotDialog.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;,
        Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.Dialog"


# instance fields
.field private mContentChanged:Z

.field private mContentLayout:I

.field private mContext:Landroid/content/Context;

.field private mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

.field private mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

.field private mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0d000d

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initWindow()V
    .locals 4

    const v0, 0x1830500

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x7f4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onCloseSystemDialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->initWindow()V

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    new-instance v0, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver$BroadcastListener;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    return-void
.end method

.method public onRinging()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;->onDismiss(I)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "Longshot.Dialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;->unregister()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mReceiver:Lcom/oneplus/screenshot/service/GlobalBroadcastReceiver;

    return-void
.end method

.method public setContent(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnDismissListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    return-void
.end method

.method public show()V
    .locals 3

    const-string v0, "Longshot.Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentLayout:I

    invoke-virtual {p0, v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Longshot.Dialog"

    const-string v1, "show : GONE=>VISIBLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const-string v0, "Longshot.Dialog"

    const-string v1, "show : CREATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mContentChanged:Z

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->mOnShowListener:Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    invoke-interface {v0, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;->onShow(Landroid/app/Dialog;)V

    :cond_3
    return-void
.end method
