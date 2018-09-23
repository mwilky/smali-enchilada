.class public final Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    }
.end annotation


# static fields
.field private static final DEST_ALL:I = 0x3

.field private static final DEST_BROADCAST:I = 0x2

.field private static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field private static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"


# instance fields
.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field final mValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/4 v4, 0x6

    const/16 v5, 0x82

    invoke-direct {v0, v5, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v5, 0x1

    const/16 v6, 0x9d

    invoke-direct {v0, v6, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v6, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    invoke-direct {v6, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v7, 0x84

    invoke-direct {v0, v7, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v6, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    invoke-direct {v6, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v7, 0x80

    invoke-direct {v0, v7, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v6, 0x81

    invoke-direct {v0, v6, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v6, 0x2

    const/16 v7, 0x86

    invoke-direct {v0, v7, v2, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    invoke-direct {v7, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v3, 0x70

    invoke-direct {v0, v3, v7, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v8, 0xff

    invoke-direct {v0, v8, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v8, 0x9f

    invoke-direct {v0, v8, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v8, 0x5

    const/16 v9, 0x91

    invoke-direct {v0, v9, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x71

    invoke-direct {v0, v9, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x8f

    invoke-direct {v0, v9, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x8c

    invoke-direct {v0, v9, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x46

    invoke-direct {v0, v9, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x83

    invoke-direct {v0, v9, v3, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v9, 0x7d

    invoke-direct {v0, v9, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v9, 0x4

    invoke-direct {v0, v9, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xc0

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xb

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xf

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xc1

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xc2

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xc3

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0xc4

    invoke-direct {v0, v10, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v10, 0x85

    invoke-direct {v0, v10, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v10, 0x7

    const/16 v11, 0x36

    invoke-direct {v0, v11, v3, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v11, 0xc5

    invoke-direct {v0, v11, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v11, 0xd

    invoke-direct {v0, v11, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-direct {v0, v4, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-direct {v0, v8, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v11, 0x45

    invoke-direct {v0, v11, v3, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/4 v11, 0x3

    const/16 v12, 0x8b

    invoke-direct {v0, v12, v3, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v12, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v14, 0x8

    invoke-direct {v13, v5, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v14, 0x9

    invoke-direct {v0, v14, v13, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v13, 0xa

    invoke-direct {v0, v13, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v13, 0x9e

    invoke-direct {v0, v13, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v13, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v14, 0x32

    invoke-direct {v0, v14, v13, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v13, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v14, 0xe

    invoke-direct {v13, v7, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    new-instance v15, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v15, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v4, 0x87

    invoke-direct {v0, v4, v15, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v4, v5, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v15, 0x89

    invoke-direct {v0, v15, v4, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v4, v9, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v8, 0xa0

    invoke-direct {v0, v8, v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8a

    invoke-direct {v0, v4, v13, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x64

    invoke-direct {v0, v4, v13, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x47

    invoke-direct {v0, v4, v13, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8d

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x8e

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v4, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v8, 0x44

    invoke-direct {v0, v8, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x90

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {v0, v7, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x7a

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v6, 0xa3

    invoke-direct {v0, v6, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xa4

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x72

    invoke-direct {v0, v4, v12, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x7e

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0x9a

    invoke-direct {v0, v4, v12, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    const/16 v4, 0xf8

    const/4 v5, 0x6

    invoke-direct {v0, v4, v13, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Z)I
    .locals 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result v0

    return v0
.end method

.method private addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private isValidPhysicalAddress([BI)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    const v2, 0xffff

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    return v1
.end method

.method static isValidType(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static toErrorCode(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method


# virtual methods
.method isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No validation information for the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xf

    if-ne v3, v5, :cond_1

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected source: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v5, :cond_2

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v3, v6

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected broadcast message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_2
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected direct message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_3
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_4
    return v2
.end method
