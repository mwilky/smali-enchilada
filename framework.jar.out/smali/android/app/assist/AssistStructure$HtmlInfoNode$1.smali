.class Landroid/app/assist/AssistStructure$HtmlInfoNode$1;
.super Ljava/lang/Object;
.source "AssistStructure.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure$HtmlInfoNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/assist/AssistStructure$HtmlInfoNode;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;

    invoke-direct {v1, v0}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    array-length v4, v2

    array-length v5, v3

    if-eq v4, v5, :cond_0

    const-string v4, "AssistStructure"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HtmlInfo attributes mismatch: names="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", values="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    aget-object v6, v3, v4

    invoke-virtual {v1, v5, v6}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$HtmlInfoNodeBuilder;->build()Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;
    .locals 1

    new-array v0, p1, [Landroid/app/assist/AssistStructure$HtmlInfoNode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$HtmlInfoNode$1;->newArray(I)[Landroid/app/assist/AssistStructure$HtmlInfoNode;

    move-result-object p1

    return-object p1
.end method
