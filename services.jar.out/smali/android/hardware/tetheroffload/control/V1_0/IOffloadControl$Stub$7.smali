.class Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;
.super Ljava/lang/Object;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->this$0:Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;

    iput-object p2, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
