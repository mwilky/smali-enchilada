.class Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;
.super Ljava/lang/Object;
.source "RemoteAnimationDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RemoteAnimationDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteAnimationAdapterEntry"
.end annotation


# static fields
.field private static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final activityTypeFilter:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field final adapter:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry$1;

    invoke-direct {v0}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry$1;-><init>()V

    sput-object v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationAdapter;

    iput-object v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/RemoteAnimationDefinition$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/view/RemoteAnimationAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    iput p2, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    return-void
.end method

.method static synthetic access$000()Landroid/os/Parcelable$Creator;
    .locals 1

    sget-object v0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iget-object v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/view/RemoteAnimationDefinition$RemoteAnimationAdapterEntry;->activityTypeFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
