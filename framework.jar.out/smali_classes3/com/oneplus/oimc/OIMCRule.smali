.class public Lcom/oneplus/oimc/OIMCRule;
.super Ljava/lang/Object;
.source "OIMCRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/oimc/OIMCRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_Enable_OnePlusRamBoost:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;


# instance fields
.field private action:I

.field private funcName:Ljava/lang/String;

.field private reserved:I

.field private startConfig:Ljava/lang/String;

.field private stopConfig:Ljava/lang/String;

.field private triggerModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "HeadsUpNotification"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "WiFiBackgroudNetLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "NotifyFor3PtyCallsBlocking"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "TurnOffAutoBacklight"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "KeyBlocking"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "NightMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorDisable"

    const-string v2, "FingerPrintMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v6, "GrayColor"

    const-string v1, "FingerPrintMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "fast"

    const-string v11, "fast"

    const/4 v7, 0x2

    const/4 v9, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v13, "ColorBalance"

    const-string v1, "FingerPrintMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v15

    const-string v17, "fast"

    const-string v18, "fast"

    const/4 v14, 0x2

    const/16 v16, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AnswerWithoutUI"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "FingerprintGestureLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "OnePlusRamboost"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_OnePlusRamBoost:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule$1;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRule$1;-><init>()V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/oimc/OIMCRule;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/oimc/OIMCRule$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/oimc/OIMCRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    iput-object p5, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    iput-object p6, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    return v0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedInt()I
    .locals 1

    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    return v0
.end method

.method public getStartConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getStopConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerModes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
