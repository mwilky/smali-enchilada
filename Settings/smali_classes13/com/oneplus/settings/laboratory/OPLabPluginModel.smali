.class public Lcom/oneplus/settings/laboratory/OPLabPluginModel;
.super Ljava/lang/Object;
.source "OPLabPluginModel.java"


# instance fields
.field private featureKey:Ljava/lang/String;

.field private featureSummary:Ljava/lang/String;

.field private featureTitle:Ljava/lang/String;

.field private multiToggleName:[Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private toggleCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatureKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMultiToggleName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleCount()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    return v0
.end method

.method public setFeatureKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureKey:Ljava/lang/String;

    return-void
.end method

.method public setFeatureSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureSummary:Ljava/lang/String;

    return-void
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->featureTitle:Ljava/lang/String;

    return-void
.end method

.method public setMultiToggleName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->multiToggleName:[Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setToggleCount(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->toggleCount:I

    return-void
.end method
