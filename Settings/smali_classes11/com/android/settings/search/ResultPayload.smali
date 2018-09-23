.class public Lcom/android/settings/search/ResultPayload;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search/ResultPayload$SettingsSource;,
        Lcom/android/settings/search/ResultPayload$Availability;,
        Lcom/android/settings/search/ResultPayload$PayloadType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/search/ResultPayload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/search/ResultPayload$1;

    invoke-direct {v0}, Lcom/android/settings/search/ResultPayload$1;-><init>()V

    sput-object v0, Lcom/android/settings/search/ResultPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/search/ResultPayload;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/search/ResultPayload$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/ResultPayload;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
