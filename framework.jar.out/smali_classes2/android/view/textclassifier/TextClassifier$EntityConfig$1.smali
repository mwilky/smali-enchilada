.class Landroid/view/textclassifier/TextClassifier$EntityConfig$1;
.super Ljava/lang/Object;
.source "TextClassifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier$EntityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/TextClassifier$EntityConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 511
    new-instance v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/textclassifier/TextClassifier$EntityConfig;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifier$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1
    .param p1, "size"    # I

    .line 516
    new-array v0, p1, [Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 508
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassifier$EntityConfig$1;->newArray(I)[Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object p1

    return-object p1
.end method
