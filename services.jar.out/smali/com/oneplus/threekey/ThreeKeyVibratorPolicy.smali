.class public Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;
.super Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;
.source "ThreeKeyVibratorPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyVibratorPolicy"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mInit:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public setDown()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode ring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setInitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    return-void
.end method

.method public setMiddle()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode dontdisturb"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public setUp()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "set mode slient"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
