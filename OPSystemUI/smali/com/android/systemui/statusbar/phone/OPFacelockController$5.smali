.class Lcom/android/systemui/statusbar/phone/OPFacelockController$5;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockAfterScreenOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 630
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1702(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLock()Z

    .line 635
    return-void
.end method
