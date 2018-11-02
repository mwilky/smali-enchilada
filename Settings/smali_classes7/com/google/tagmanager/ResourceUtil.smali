.class Lcom/google/tagmanager/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/ResourceUtil$ExpandedResource;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRule;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;,
        Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;,
        Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->property:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->property:[Lcom/google/analytics/containertag/proto/Serving$Property;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "properties"

    invoke-static {v5, v6, v7}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/analytics/containertag/proto/Serving$Property;

    iget-object v6, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->key:[Ljava/lang/String;

    iget v7, v5, Lcom/google/analytics/containertag/proto/Serving$Property;->key:I

    const-string v8, "keys"

    invoke-static {v6, v7, v8}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget v7, v5, Lcom/google/analytics/containertag/proto/Serving$Property;->value:I

    const-string v8, "values"

    invoke-static {p2, v7, v8}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    sget-object v8, Lcom/google/analytics/containertag/common/Key;->PUSH_AFTER_EVALUATE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v8}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->setPushAfterEvaluate(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v6, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->addProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCallBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v1

    return-object v1
.end method

.method private static expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            ")",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;"
        }
    .end annotation

    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->positivePredicate:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addPositivePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->negativePredicate:[I

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addNegativePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTag:[I

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addTagRuleName:[I

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTag:[I

    array-length v2, v1

    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_4

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTag(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeTagRuleName:[I

    array-length v2, v1

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_5

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveTagRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacro:[I

    array-length v2, v1

    move v4, v3

    :goto_6
    if-ge v4, v2, :cond_6

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->addMacroRuleName:[I

    array-length v2, v1

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_7

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addAddMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacro:[I

    array-length v2, v1

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_8

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    invoke-virtual {v0, v6}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule;->removeMacroRuleName:[I

    array-length v2, v1

    :goto_9
    if-ge v3, v2, :cond_9

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p4, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->addRemoveMacroRuleName(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceUtil$ExpandedRuleBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v1

    return-object v1
.end method

.method private static expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/analytics/containertag/proto/Serving$Resource;",
            "[",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value cycle detected.  Current value reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Previous value references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const-string v1, "values"

    invoke-static {v0, p0, v1}, Lcom/google/tagmanager/ResourceUtil;->getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    aget-object v1, p2, p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->templateToken:[I

    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_2

    aget v7, v5, v3

    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->templateToken:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_0

    :cond_2
    goto/16 :goto_4

    :pswitch_1
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    iget v3, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->macroNameReference:I

    invoke-static {v3, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->macroReference:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v5, v5

    if-eq v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uneven map keys ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and map values ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapKey:[I

    array-length v6, v5

    move v7, v4

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    aget v8, v5, v4

    iget-object v9, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapKey:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v10, v7, 0x1

    invoke-static {v8, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v11

    aput-object v11, v9, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v10

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->mapValue:[I

    array-length v6, v5

    :goto_2
    if-ge v3, v6, :cond_5

    aget v7, v5, v3

    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->mapValue:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_2

    :cond_5
    goto :goto_4

    :pswitch_3
    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v2

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    iget-object v4, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v4, v4

    new-array v4, v4, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    iput-object v4, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->listItem:[I

    array-length v6, v5

    :goto_3
    if-ge v3, v6, :cond_6

    aget v7, v5, v3

    iget-object v8, v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->listItem:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v9, v4, 0x1

    invoke-static {v7, p1, p2, p3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v10

    aput-object v10, v8, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_3

    :cond_6
    goto :goto_4

    :pswitch_4
    move-object v1, v0

    :goto_4
    if-nez v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_7
    aput-object v1, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getExpandedResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->value:[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/tagmanager/ResourceUtil;->expandValue(ILcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->newBuilder()Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->tag:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v5, v5, v4

    invoke-static {v5, p0, v0, v4}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_2
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->predicate:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v6, v6, v5

    invoke-static {v6, p0, v0, v5}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    :goto_3
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->macro:[Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    aget-object v7, v7, v6

    invoke-static {v7, p0, v0, v6}, Lcom/google/tagmanager/ResourceUtil;->expandFunctionCall(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;Lcom/google/analytics/containertag/proto/Serving$Resource;[Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addMacro(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->rule:[Lcom/google/analytics/containertag/proto/Serving$Rule;

    array-length v7, v6

    :goto_4
    if-ge v1, v7, :cond_4

    aget-object v8, v6, v1

    invoke-static {v8, v3, v5, v4, p0}, Lcom/google/tagmanager/ResourceUtil;->expandRule(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->version:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setVersion(Ljava/lang/String;)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource;->resourceFormatVersion:I

    invoke-virtual {v2, v1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->setResourceFormatVersion(I)Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;

    invoke-virtual {v2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResourceBuilder;->build()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v1

    return-object v1
.end method

.method private static getServingValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->ext:Lcom/google/tagmanager/protobuf/nano/Extension;

    invoke-virtual {p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getExtension(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    return-object v1
.end method

.method private static getWithBoundsCheck(Ljava/util/List;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getWithBoundsCheck([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of bounds detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/ResourceUtil;->logAndThrow(Ljava/lang/String;)V

    :cond_1
    aget-object v0, p0, p1

    return-object v0
.end method

.method private static logAndThrow(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/ResourceUtil$InvalidResourceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newValueBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2

    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>()V

    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iput v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->type:I

    iget-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->escaping:[I

    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    iput-boolean v1, v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->containsReferences:Z

    :cond_0
    return-object v0
.end method
