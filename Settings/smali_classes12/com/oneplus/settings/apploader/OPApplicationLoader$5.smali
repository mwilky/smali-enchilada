.class Lcom/oneplus/settings/apploader/OPApplicationLoader$5;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/settings/better/OPAppModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I
    .locals 4
    .param p1, "object1"    # Lcom/oneplus/settings/better/OPAppModel;
    .param p2, "object2"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 560
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 562
    .local v0, "compareResult":I
    if-eqz v0, :cond_0

    .line 563
    return v0

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 567
    if-eqz v0, :cond_1

    .line 568
    return v0

    .line 570
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 555
    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I

    move-result p1

    return p1
.end method
