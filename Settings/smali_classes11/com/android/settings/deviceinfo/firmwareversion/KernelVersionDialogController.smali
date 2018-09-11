.class public Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;
.super Ljava/lang/Object;
.source "KernelVersionDialogController.java"


# static fields
.field static KERNEL_VERSION_VALUE_ID:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const v0, 0x7f0a028a

    sput v0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->KERNEL_VERSION_VALUE_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0
    .param p1, "dialog"    # Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 33
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->KERNEL_VERSION_VALUE_ID:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    .line 40
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 41
    return-void
.end method
