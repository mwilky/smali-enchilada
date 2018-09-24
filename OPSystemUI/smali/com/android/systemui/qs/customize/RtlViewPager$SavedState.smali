.class public Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLayoutDirection:I

.field private final mViewPagerSavedState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/systemui/qs/customize/RtlViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    iput p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/android/systemui/qs/customize/RtlViewPager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mViewPagerSavedState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$SavedState;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
