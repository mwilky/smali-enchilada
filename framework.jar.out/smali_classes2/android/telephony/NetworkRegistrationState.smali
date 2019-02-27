.class public Landroid/telephony/NetworkRegistrationState;
.super Ljava/lang/Object;
.source "NetworkRegistrationState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkRegistrationState$ServiceType;,
        Landroid/telephony/NetworkRegistrationState$RegState;,
        Landroid/telephony/NetworkRegistrationState$Domain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkRegistrationState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_CS:I = 0x1

.field public static final DOMAIN_PS:I = 0x2

.field public static final REG_STATE_DENIED:I = 0x3

.field public static final REG_STATE_HOME:I = 0x1

.field public static final REG_STATE_NOT_REG_NOT_SEARCHING:I = 0x0

.field public static final REG_STATE_NOT_REG_SEARCHING:I = 0x2

.field public static final REG_STATE_ROAMING:I = 0x5

.field public static final REG_STATE_UNKNOWN:I = 0x4

.field public static final SERVICE_TYPE_DATA:I = 0x2

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x5

.field public static final SERVICE_TYPE_SMS:I = 0x3

.field public static final SERVICE_TYPE_VIDEO:I = 0x4

.field public static final SERVICE_TYPE_VOICE:I = 0x1


# instance fields
.field private final mAccessNetworkTechnology:I

.field private final mAvailableServices:[I

.field private final mCellIdentity:Landroid/telephony/CellIdentity;

.field private mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

.field private final mDomain:I

.field private final mEmergencyOnly:Z

.field private final mReasonForDenial:I

.field private final mRegState:I

.field private final mTransportType:I

.field private mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/NetworkRegistrationState$1;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationState$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkRegistrationState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    iput p2, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    iput p3, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    iput p4, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    iput p5, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    iput-object p7, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    iput-object p8, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    iput-boolean p6, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;I)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V

    new-instance v0, Landroid/telephony/DataSpecificRegistrationStates;

    invoke-direct {v0, p9}, Landroid/telephony/DataSpecificRegistrationStates;-><init>(I)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-void
.end method

.method public constructor <init>(IIIIIZ[ILandroid/telephony/CellIdentity;ZIII)V
    .locals 1

    invoke-direct/range {p0 .. p8}, Landroid/telephony/NetworkRegistrationState;-><init>(IIIIIZ[ILandroid/telephony/CellIdentity;)V

    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-direct {v0, p9, p10, p11, p12}, Landroid/telephony/VoiceSpecificRegistrationStates;-><init>(ZIII)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    const-class v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/VoiceSpecificRegistrationStates;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    const-class v0, Landroid/telephony/DataSpecificRegistrationStates;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataSpecificRegistrationStates;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static regStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ROAMING"

    return-object v0

    :pswitch_1
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_2
    const-string v0, "DENIED"

    return-object v0

    :pswitch_3
    const-string v0, "NOT_REG_SEARCHING"

    return-object v0

    :pswitch_4
    const-string v0, "HOME"

    return-object v0

    :pswitch_5
    const-string v0, "NOT_REG_NOT_SEARCHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    instance-of v2, p1, Landroid/telephony/NetworkRegistrationState;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/NetworkRegistrationState;

    iget v3, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    iget v4, v2, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    iget v4, v2, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    iget v4, v2, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    iget v4, v2, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    iget v4, v2, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    iget-boolean v4, v2, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    iget-object v4, v2, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    iget-object v4, v2, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v4, v2, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-static {v3, v4}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    iget-object v4, v2, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-static {v3, v4}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    iget-object v4, v2, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    invoke-static {v3, v4}, Landroid/telephony/NetworkRegistrationState;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getAccessNetworkTechnology()I
    .locals 1

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    return v0
.end method

.method public getAvailableServices()[I
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    return-object v0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public getDataSpecificStates()Landroid/telephony/DataSpecificRegistrationStates;
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    return-object v0
.end method

.method public getDomain()I
    .locals 1

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    return v0
.end method

.method public getReasonForDenial()I
    .locals 1

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    return v0
.end method

.method public getRegState()I
    .locals 1

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    return v0
.end method

.method public getTransportType()I
    .locals 1

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    return v0
.end method

.method public getVoiceSpecificStates()Landroid/telephony/VoiceSpecificRegistrationStates;
    .locals 1

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmergencyEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkRegistrationState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "transportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "CS"

    goto :goto_0

    :cond_0
    const-string v1, "PS"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " regState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationState;->regStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accessNetworkTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reasonForDenial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " emergencyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " supportedServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " voiceSpecificStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " dataSpecificStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mAccessNetworkTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/NetworkRegistrationState;->mReasonForDenial:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationState;->mEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mAvailableServices:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mVoiceSpecificStates:Landroid/telephony/VoiceSpecificRegistrationStates;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationState;->mDataSpecificStates:Landroid/telephony/DataSpecificRegistrationStates;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
