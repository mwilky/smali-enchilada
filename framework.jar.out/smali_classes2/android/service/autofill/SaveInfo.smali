.class public final Landroid/service/autofill/SaveInfo;
.super Ljava/lang/Object;
.source "SaveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveInfo$Builder;,
        Landroid/service/autofill/SaveInfo$SaveInfoFlags;,
        Landroid/service/autofill/SaveInfo$SaveDataType;,
        Landroid/service/autofill/SaveInfo$NegativeButtonStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/SaveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_DONT_SAVE_ON_FINISH:I = 0x2

.field public static final FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE:I = 0x1

.field public static final NEGATIVE_BUTTON_STYLE_CANCEL:I = 0x0

.field public static final NEGATIVE_BUTTON_STYLE_REJECT:I = 0x1

.field public static final SAVE_DATA_TYPE_ADDRESS:I = 0x2

.field public static final SAVE_DATA_TYPE_CREDIT_CARD:I = 0x4

.field public static final SAVE_DATA_TYPE_EMAIL_ADDRESS:I = 0x10

.field public static final SAVE_DATA_TYPE_GENERIC:I = 0x0

.field public static final SAVE_DATA_TYPE_PASSWORD:I = 0x1

.field public static final SAVE_DATA_TYPE_USERNAME:I = 0x8


# instance fields
.field private final mCustomDescription:Landroid/service/autofill/CustomDescription;

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mFlags:I

.field private final mNegativeActionListener:Landroid/content/IntentSender;

.field private final mNegativeButtonStyle:I

.field private final mOptionalIds:[Landroid/view/autofill/AutofillId;

.field private final mRequiredIds:[Landroid/view/autofill/AutofillId;

.field private final mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

.field private final mSanitizerValues:[[Landroid/view/autofill/AutofillId;

.field private final mTriggerId:Landroid/view/autofill/AutofillId;

.field private final mType:I

.field private final mValidator:Landroid/service/autofill/InternalValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/SaveInfo$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveInfo$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/autofill/SaveInfo$Builder;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$000(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$100(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$200(Landroid/service/autofill/SaveInfo$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$300(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$400(Landroid/service/autofill/SaveInfo$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$500(Landroid/service/autofill/SaveInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$600(Landroid/service/autofill/SaveInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$700(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/CustomDescription;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$800(Landroid/service/autofill/SaveInfo$Builder;)Landroid/service/autofill/InternalValidator;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$900(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$900(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    new-array v1, v0, [Landroid/service/autofill/InternalSanitizer;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    new-array v1, v0, [[Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$900(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/InternalSanitizer;

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$900(Landroid/service/autofill/SaveInfo$Builder;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/autofill/AutofillId;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/service/autofill/SaveInfo$Builder;->access$1000(Landroid/service/autofill/SaveInfo$Builder;)Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/autofill/SaveInfo$Builder;Landroid/service/autofill/SaveInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveInfo;-><init>(Landroid/service/autofill/SaveInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomDescription()Landroid/service/autofill/CustomDescription;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    return v0
.end method

.method public getNegativeActionListener()Landroid/content/IntentSender;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    return-object v0
.end method

.method public getNegativeActionStyle()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    return v0
.end method

.method public getOptionalIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getRequiredIds()[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    return-object v0
.end method

.method public getSanitizerValues()[[Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getTriggerId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    return v0
.end method

.method public getValidator()Landroid/service/autofill/InternalValidator;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SaveInfo: [type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Landroid/service/autofill/SaveInfo;

    const-string v2, "SAVE_DATA_TYPE_"

    iget v3, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/autofill/SaveInfo;

    const-string v2, "NEGATIVE_BUTTON_STYLE_"

    iget v3, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-static {v1, v2, v3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_1

    const-string v1, ", optionalIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    if-eqz v1, :cond_3

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    if-eqz v1, :cond_4

    const-string v1, ", customDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    if-eqz v1, :cond_5

    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v1, :cond_6

    const-string v1, ", sanitizerKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_7

    const-string v1, ", sanitizerValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_8

    const-string v1, ", triggerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mRequiredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mOptionalIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeButtonStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mNegativeActionListener:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mCustomDescription:Landroid/service/autofill/CustomDescription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mValidator:Landroid/service/autofill/InternalValidator;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mSanitizerKeys:[Landroid/service/autofill/InternalSanitizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/service/autofill/SaveInfo;->mSanitizerValues:[[Landroid/view/autofill/AutofillId;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/SaveInfo;->mTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/autofill/SaveInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
