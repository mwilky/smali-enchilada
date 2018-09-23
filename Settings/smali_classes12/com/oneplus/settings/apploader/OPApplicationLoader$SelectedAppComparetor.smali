.class public Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedAppComparetor"
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
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/settings/better/OPAppModel;

    check-cast p2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/apploader/OPApplicationLoader$SelectedAppComparetor;->compare(Lcom/oneplus/settings/better/OPAppModel;Lcom/oneplus/settings/better/OPAppModel;)I

    move-result p1

    return p1
.end method
