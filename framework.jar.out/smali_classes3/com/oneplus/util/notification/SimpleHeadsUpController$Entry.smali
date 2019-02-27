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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput-wide p3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sbn:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getTimeOut()J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->timeOut:J

    return-wide v0
.end method

.method public getTouchAble()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->touchAble:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    return-object v0
.end method

.method public isSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sensitive:Z

    return v0
.end method

.method public updateEntry(Landroid/service/notification/StatusBarNotification;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sbn:Landroid/service/notification/StatusBarNotification;

    iput-boolean p2, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->sensitive:Z

    iput-object p3, p0, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;->view:Landroid/view/View;

    return-void
.end method
