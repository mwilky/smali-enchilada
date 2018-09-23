.class Lcom/google/tagmanager/NoopValueBuilder;
.super Ljava/lang/Object;
.source "NoopValueBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ValueBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopMacroEvaluationInfoBuilder;-><init>()V

    return-object v0
.end method

.method public getListItem(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/NoopValueBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopValueBuilder;-><init>()V

    return-object v0
.end method
