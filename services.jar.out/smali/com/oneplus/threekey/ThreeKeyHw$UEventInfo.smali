.class final Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;
.super Ljava/lang/Object;
.source "ThreeKeyHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyHw;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "soc:tri_state_key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevIndex()V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "tri-state-key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    :goto_0
    return-void
.end method

.method private getDevIndex()V
    .locals 8

    const/4 v0, 0x4

    const/16 v1, 0x400

    new-array v2, v1, [C

    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/sys/class/switch/extcon%d/name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v7, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v7, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    goto :goto_0

    :cond_0
    const-string v6, "ThreeKeyHw"

    const-string v7, "/sys/class/switch/extcon4/name != soc:tri_state_key"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "ThreeKeyHw"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "ThreeKeyHw"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/platform/soc/%s/extcon/extcon%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/virtual/switch/%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/switch/extcon%d/"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/switch/%s/state"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
