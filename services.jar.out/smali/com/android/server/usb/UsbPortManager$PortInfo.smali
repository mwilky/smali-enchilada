.class final Lcom/android/server/usb/UsbPortManager$PortInfo;
.super Ljava/lang/Object;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PortInfo"
.end annotation


# static fields
.field public static final DISPOSITION_ADDED:I = 0x0

.field public static final DISPOSITION_CHANGED:I = 0x1

.field public static final DISPOSITION_READY:I = 0x2

.field public static final DISPOSITION_REMOVED:I = 0x3


# instance fields
.field public mCanChangeDataRole:Z

.field public mCanChangeMode:Z

.field public mCanChangePowerRole:Z

.field public mDisposition:I

.field public final mUsbPort:Landroid/hardware/usb/UsbPort;

.field public mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/usb/UsbPort;

    invoke-direct {v0, p1, p2}, Landroid/hardware/usb/UsbPort;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 6

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v2, "port"

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    const-wide v4, 0x10b00000001L

    invoke-static {p1, v2, v4, v5, v3}, Lcom/android/internal/usb/DumpUtils;->writePort(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPort;)V

    const-string/jumbo v2, "status"

    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const-wide v4, 0x10b00000002L

    invoke-static {p1, v2, v4, v5, v3}, Lcom/android/internal/usb/DumpUtils;->writePortStatus(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbPortStatus;)V

    const-string v2, "can_change_mode"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v2, "can_change_power_role"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    const-wide v4, 0x10800000004L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-string v2, "can_change_data_role"

    iget-boolean v3, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    const-wide v4, 0x10800000005L

    invoke-virtual {p1, v2, v4, v5, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public setStatus(IZIZIZI)Z
    .locals 1

    iput-boolean p2, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    iput-boolean p4, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    iput-boolean p6, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getSupportedRoleCombinations()I

    move-result v0

    if-eq v0, p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/hardware/usb/UsbPortStatus;

    invoke-direct {v0, p1, p3, p5, p7}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangePowerRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canChangeDataRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
