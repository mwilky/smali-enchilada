.class public Lcom/caverock/androidsvg/CSSParser$Ruleset;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ruleset"
.end annotation


# instance fields
.field private rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 150
    return-void
.end method


# virtual methods
.method public add(Lcom/caverock/androidsvg/CSSParser$Rule;)V
    .locals 4
    .param p1, "rule"    # Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 157
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 159
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 167
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void

    .line 161
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 162
    .local v1, "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v2, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    iget-object v3, p1, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    iget v3, v3, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-le v2, v3, :cond_2

    .line 163
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 164
    return-void

    .line 159
    .end local v1    # "nextRule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V
    .locals 3
    .param p1, "rules"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 172
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    .line 176
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 179
    return-void

    .line 176
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 177
    .local v1, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    goto :goto_0
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Rule;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 195
    const-string v0, ""

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$Ruleset;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 198
    .local v2, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$Rule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v2    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    goto :goto_0
.end method
