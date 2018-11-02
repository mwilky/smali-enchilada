.class Lcom/oneplus/settings/OPCustomFingerprintAnimSettings$1;
.super Landroid/os/Handler;
.source "OPCustomFingerprintAnimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings$1;->this$0:Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
