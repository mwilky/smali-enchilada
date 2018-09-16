.class Lcom/android/systemui/statusbar/phone/OPFacelockController$12$1;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController$12;->onEndRecognize(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$12;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    .line 1157
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$12$1;->this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$12$1;->this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$12;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$12;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 1161
    return-void
.end method
