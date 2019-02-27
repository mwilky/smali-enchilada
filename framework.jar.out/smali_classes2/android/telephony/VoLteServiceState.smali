.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "srvccState"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 83
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    .line 95
    return-void
.end method

.method private initialize()V
    .locals 1

    .line 103
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 104
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 227
    const-string v0, "VoLteServiceState"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .line 61
    new-instance v0, Landroid/telephony/VoLteServiceState;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    .line 62
    .local v0, "ret":Landroid/telephony/VoLteServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 63
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .line 206
    const-string/jumbo v0, "mSrvccState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 207
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .line 110
    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 111
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 178
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/VoLteServiceState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .local v1, "s":Landroid/telephony/VoLteServiceState;
    nop

    .line 180
    nop

    .line 183
    if-nez p1, :cond_0

    .line 184
    return v0

    .line 187
    :cond_0
    iget v2, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iget v3, v1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 179
    .end local v1    # "s":Landroid/telephony/VoLteServiceState;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .line 216
    const-string/jumbo v0, "mSrvccState"

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    .line 220
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 166
    const/16 v0, 0x1f

    .line 167
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .locals 0

    .line 163
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return-void
.end method
