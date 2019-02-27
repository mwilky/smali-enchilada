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

    .line 89
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "HeadsUpNotification"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_HeadsUpNotification:Lcom/oneplus/oimc/OIMCRule;

    .line 105
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "WiFiBackgroudNetLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    .line 115
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "NotifyFor3PtyCallsBlocking"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    .line 124
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "TurnOffAutoBacklight"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_AutoBacklight:Lcom/oneplus/oimc/OIMCRule;

    .line 133
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "KeyBlocking"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    .line 142
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "NightMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    .line 151
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    .line 158
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorBalance"

    const-string v2, "ReadMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    .line 165
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "GrayColor"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    .line 179
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "ColorDisable"

    const-string v2, "FingerPrintMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    .line 186
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

    .line 193
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

    .line 202
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "AnswerWithoutUI"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    .line 211
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "FingerprintGestureLimit"

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    .line 220
    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v1, "OnePlusRamboost"

    const-string v2, "SystemMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_OnePlusRamBoost:Lcom/oneplus/oimc/OIMCRule;

    .line 256
    new-instance v0, Lcom/oneplus/oimc/OIMCRule$1;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRule$1;-><init>()V

    sput-object v0, Lcom/oneplus/oimc/OIMCRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 234
    invoke-virtual {p0, p1}, Lcom/oneplus/oimc/OIMCRule;->readFromParcel(Landroid/os/Parcel;)V

    .line 235
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/oimc/OIMCRule$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/oneplus/oimc/OIMCRule$1;

    .line 25
    invoke-direct {p0, p1}, Lcom/oneplus/oimc/OIMCRule;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 1
    .param p1, "_funcName"    # Ljava/lang/String;
    .param p2, "_action"    # I
    .param p3, "_triggerModes"    # [Ljava/lang/String;
    .param p4, "_reserved"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 37
    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 39
    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "_funcName"    # Ljava/lang/String;
    .param p2, "_action"    # I
    .param p3, "_triggerModes"    # [Ljava/lang/String;
    .param p4, "_reserved"    # I
    .param p5, "_startConfig"    # Ljava/lang/String;
    .param p6, "_stopConfig"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 46
    iput-object p3, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 48
    iput-object p5, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    return v0
.end method

.method public getFuncName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    return-object v0
.end method

.method public getReservedInt()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    return v0
.end method

.method public getStartConfig()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getStopConfig()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerModes()[Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->funcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->action:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->triggerModes:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/oneplus/oimc/OIMCRule;->reserved:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->startConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/oneplus/oimc/OIMCRule;->stopConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return-void
.end method
