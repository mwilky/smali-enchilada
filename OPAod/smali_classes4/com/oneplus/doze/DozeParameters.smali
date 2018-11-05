.class public Lcom/oneplus/doze/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_DURATION:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "DozeParameters"

.field private static sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeParameters"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/doze/DozeParameters;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dumpPickupSubtypePerformsProxCheck()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    sget-object v0, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "  DozeParameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    getDisplayStateSupported(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getDisplayStateSupported()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPulseDuration(pickup=false): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeParameters;->getPulseDuration(Z)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    getPulseDuration(pickup=true): "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeParameters;->getPulseDuration(Z)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "    getPulseInDuration(pickup=false): "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseInDuration(pickup=true): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseInVisibleDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseOutDuration(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOutDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPulseOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getVibrateOnSigMotion(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getVibrateOnSigMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getVibrateOnPickup(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getVibrateOnPickup()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getProxCheckBeforePulse(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getProxCheckBeforePulse()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "    getPickupVibrationThreshold(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPickupVibrationThreshold()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "    getPickupSubtypePerformsProxCheck(): "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/doze/DozeParameters;->dumpPickupSubtypePerformsProxCheck()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayStateSupported()Z
    .locals 2

    const-string v0, "doze.display.supported"

    const v1, 0x7f040010

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPickupSubtypePerformsProxCheck(I)Z
    .locals 3

    const-string v0, "doze.pickup.proxcheck"

    const v1, 0x7f1000f3

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/doze/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1

    :cond_0
    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    iget-object v1, v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    invoke-direct {v1, v0}, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    :cond_2
    sget-object v1, Lcom/oneplus/doze/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;

    invoke-virtual {v1, p1}, Lcom/oneplus/doze/DozeParameters$IntInOutMatcher;->isIn(I)Z

    move-result v1

    return v1
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    const-string v0, "doze.pickup.vibration.threshold"

    const v1, 0x7f0a0011

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    const-string v0, "doze.pulse.proxcheck"

    const v1, 0x7f04000b

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseDuration(Z)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeParameters;->getPulseInDuration(Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseVisibleDuration()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/doze/DozeParameters;->getPulseOutDuration()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPulseInDuration(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "doze.pulse.duration.in.pickup"

    const v1, 0x7f0a0013

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "doze.pulse.duration.in"

    const v1, 0x7f0a0012

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPulseInVisibleDuration()I
    .locals 2

    const-string v0, "doze.pulse.duration.invisible"

    const v1, 0x7f0a0014

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    const-string v0, "doze.pulse.sigmotion"

    const v1, 0x7f04000d

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPulseOutDuration()I
    .locals 2

    const-string v0, "doze.pulse.duration.out"

    const v1, 0x7f0a0023

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0a0016

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0a0010

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0a000f

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0a0018

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_2
    const-string v0, "doze.pulse.duration.visible"

    const v1, 0x7f0a0016

    invoke-direct {p0, v0, v1}, Lcom/oneplus/doze/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getVibrateOnPickup()Z
    .locals 2

    const-string v0, "doze.vibrate.pickup"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrateOnSigMotion()Z
    .locals 2

    const-string v0, "doze.vibrate.sigmotion"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
