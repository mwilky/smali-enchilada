.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;,
        Landroid/print/PrinterInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private final mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private final mCustomPrinterIconGen:I

.field private final mDescription:Ljava/lang/String;

.field private final mHasCustomPrinterIcon:Z

.field private final mIconResourceId:I

.field private final mId:Landroid/print/PrinterId;

.field private final mInfoIntent:Landroid/app/PendingIntent;

.field private final mName:Ljava/lang/String;

.field private final mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/print/PrinterInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    invoke-static {v1}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v1

    iput-object v1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result v1

    iput v1, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterCapabilitiesInfo;

    iput-object v1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iput-object p2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iput p3, p0, Landroid/print/PrinterInfo;->mStatus:I

    iput p4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    iput-boolean p5, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    iput-object p6, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iput-object p7, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iput p9, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/print/PrinterInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1

    invoke-static {p0}, Landroid/print/PrinterInfo;->checkStatus(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method static synthetic access$400(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/print/PrinterInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method static synthetic access$600(Landroid/print/PrinterInfo;)I
    .locals 1

    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    return v0
.end method

.method static synthetic access$700(Landroid/print/PrinterInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return v0
.end method

.method static synthetic access$800(Landroid/print/PrinterInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private static checkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "name cannot be empty."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static checkPrinterId(Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 1

    const-string/jumbo v0, "printerId cannot be null."

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    return-object v0
.end method

.method private static checkStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
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

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrinterInfo;

    invoke-virtual {p0, v2}, Landroid/print/PrinterInfo;->equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/print/PrinterInfo;->mStatus:I

    iget v4, v2, Landroid/print/PrinterInfo;->mStatus:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public equalsIgnoringStatus(Landroid/print/PrinterInfo;)Z
    .locals 3

    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_4

    return v1

    :cond_3
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v2}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    iget v2, p1, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    iget-boolean v2, p1, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    iget v2, p1, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_8

    iget-object v0, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_9

    return v1

    :cond_8
    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getHasCustomPrinterIcon()Z
    .locals 1

    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    return v0
.end method

.method public getId()Landroid/print/PrinterId;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getInfoIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v4}, Landroid/print/PrinterId;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Landroid/print/PrinterInfo;->mStatus:I

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v4}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget-boolean v4, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    add-int/2addr v1, v4

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    nop

    :cond_2
    add-int/2addr v2, v5

    return v2
.end method

.method public loadIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-boolean v2, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "print"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintManager;

    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2, v3}, Landroid/print/PrintManager;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_3

    :try_start_0
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {v1, v2, v5, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    :cond_3
    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasCustomPrinterIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", customPrinterIconGen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", infoIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/print/PrinterInfo;->mIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/print/PrinterInfo;->mHasCustomPrinterIcon:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/print/PrinterInfo;->mCustomPrinterIconGen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/print/PrinterInfo;->mInfoIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
