.class public Lcom/oneplus/util/notification/SimpleHeadsUpController;
.super Ljava/lang/Object;
.source "SimpleHeadsUpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mContext:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    .line 22
    return-void
.end method


# virtual methods
.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    .line 44
    return-void
.end method

.method public hide(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide(Landroid/view/View;J)V

    .line 39
    return-void
.end method

.method public hide(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hideFromPackage(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->onDensityOrFontScaleChanged()V

    .line 53
    return-void
.end method

.method public show(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sensitive"    # Z

    .line 30
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->show(Landroid/service/notification/StatusBarNotification;Z)V

    .line 31
    return-void
.end method

.method public showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "timeOut"    # J

    .line 34
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController;->mDialog:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V

    .line 35
    return-void
.end method
