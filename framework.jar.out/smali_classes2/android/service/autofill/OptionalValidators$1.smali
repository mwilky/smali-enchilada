.class Landroid/service/autofill/OptionalValidators$1;
.super Ljava/lang/Object;
.source "OptionalValidators.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/OptionalValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/OptionalValidators;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;
    .locals 3

    new-instance v0, Landroid/service/autofill/OptionalValidators;

    const-class v1, Landroid/service/autofill/InternalValidator;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/service/autofill/InternalValidator;

    invoke-direct {v0, v1}, Landroid/service/autofill/OptionalValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/OptionalValidators;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/OptionalValidators;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/OptionalValidators;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/OptionalValidators$1;->newArray(I)[Landroid/service/autofill/OptionalValidators;

    move-result-object p1

    return-object p1
.end method
