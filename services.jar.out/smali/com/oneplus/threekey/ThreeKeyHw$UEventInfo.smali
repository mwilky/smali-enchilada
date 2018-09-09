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

    .line 107
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->this$0:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/oneplus/threekey/ThreeKeyHw;->isSupportSocThreeKey()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    const-string/jumbo p1, "soc:tri_state_key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 110
    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 111
    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 112
    const/4 p1, 0x4

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 113
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getDevIndex()V

    goto :goto_0

    .line 115
    :cond_0
    const-string/jumbo p1, "tri-state-key"

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    .line 116
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState1Bits:I

    .line 117
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mState2Bits:I

    .line 118
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mStateNbits:I

    .line 119
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 121
    :goto_0
    return-void
.end method

.method private getDevIndex()V
    .locals 8

    .line 124
    const/4 v0, 0x4

    .line 125
    .local v0, "index":I
    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 128
    .local v2, "buffer":[C
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "/sys/class/switch/extcon%d/name"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 128
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "devPath":Ljava/lang/String;
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 132
    .local v4, "file":Ljava/io/FileReader;
    invoke-virtual {v4, v2, v7, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    .line 133
    .local v1, "len":I
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 135
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v7, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "devName":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    iput v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    goto :goto_0

    .line 139
    :cond_0
    const-string v6, "ThreeKeyHw"

    const-string v7, "/sys/class/switch/extcon4/name != soc:tri_state_key"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "len":I
    .end local v3    # "devPath":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/FileReader;
    .end local v5    # "devName":Ljava/lang/String;
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ThreeKeyHw"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "ThreeKeyHw"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 146
    :goto_1
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 152
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/devices/platform/soc/%s/extcon/extcon%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 152
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
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

    .line 163
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevName:Ljava/lang/String;

    const-string/jumbo v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/sys/class/switch/extcon%d/"

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/oneplus/threekey/ThreeKeyHw$UEventInfo;->mDevIndex:I

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 164
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
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
