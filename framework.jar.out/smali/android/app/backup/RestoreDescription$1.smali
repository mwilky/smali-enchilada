.class Landroid/app/backup/RestoreDescription$1;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/backup/RestoreDescription;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;
    .locals 3

    new-instance v0, Landroid/app/backup/RestoreDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription$1;)V

    const-string v1, "NO_MORE_PACKAGES"

    invoke-static {v0}, Landroid/app/backup/RestoreDescription;->access$100(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    goto :goto_0

    :cond_0
    nop

    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/backup/RestoreDescription;
    .locals 1

    new-array v0, p1, [Landroid/app/backup/RestoreDescription;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->newArray(I)[Landroid/app/backup/RestoreDescription;

    move-result-object p1

    return-object p1
.end method
