.class public Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;
.super Ljava/lang/Object;
.source "BuildNumberDialogController.java"


# static fields
.field static final BUILD_NUMBER_VALUE_ID:I = 0x7f0a00bf
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
