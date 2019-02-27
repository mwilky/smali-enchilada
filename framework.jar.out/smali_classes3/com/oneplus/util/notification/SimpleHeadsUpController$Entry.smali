.class public final Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;
.super Ljava/lang/Object;
.source "SimpleHeadsUpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private sbn:Landroid/service/notification/StatusBarNotification;

.field private sensitive:Z

.field private timeOut:J

.field private touchAble:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sensitive"    # Z
    .param p3, "view"    # Landroid/view/View;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/widget/FrameLayout$LayoutParams;
    .param p3, "timeOut"    # J

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    .line 72
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    .line 73
    iput-object p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    iput-wide p3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    .line 76
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sbn:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getTimeOut()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    return-wide v0
.end method

.method public getTouchAble()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    return-object v0
.end method

.method public isSensitive()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sensitive:Z

    return v0
.end method

.method public updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "sensitive"    # Z
    .param p3, "view"    # Landroid/view/View;

    .line 91
    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 92
    iput-boolean p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sensitive:Z

    .line 93
    iput-object p3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    .line 94
    return-void
.end method
