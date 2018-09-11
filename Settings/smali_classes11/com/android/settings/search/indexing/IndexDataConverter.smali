.class public Lcom/android/settings/search/indexing/IndexDataConverter;
.super Ljava/lang/Object;
.source "IndexDataConverter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IndexDataConverter"

.field private static final NODE_NAME_CHECK_BOX_PREFERENCE:Ljava/lang/String; = "CheckBoxPreference"

.field private static final NODE_NAME_LIST_PREFERENCE:Ljava/lang/String; = "ListPreference"

.field private static final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String; = "PreferenceScreen"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexDataConverter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private convertRaw(Lcom/android/settings/search/SearchIndexableRaw;Ljava/util/Set;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 4
    .param p1, "raw"    # Lcom/android/settings/search/SearchIndexableRaw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/settings/search/indexing/IndexData$Builder;"
        }
    .end annotation

    .line 111
    .local p2, "nonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 113
    .local v0, "enabled":Z
    :goto_1
    new-instance v1, Lcom/android/settings/search/indexing/IndexData$Builder;

    invoke-direct {v1}, Lcom/android/settings/search/indexing/IndexData$Builder;-><init>()V

    .line 114
    .local v1, "builder":Lcom/android/settings/search/indexing/IndexData$Builder;
    iget-object v2, p1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    .line 120
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIconResId(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 123
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v0}, Lcom/android/settings/search/indexing/IndexData$Builder;->setEnabled(Z)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v2

    iget v3, p1, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    .line 126
    invoke-virtual {v2, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setUserId(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 128
    return-object v1
.end method

.method private convertResource(Landroid/provider/SearchIndexableResource;Ljava/util/Set;)Ljava/util/List;
    .locals 49
    .param p1, "sir"    # Landroid/provider/SearchIndexableResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/indexing/IndexData;",
            ">;"
        }
    .end annotation

    .local p2, "nonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 140
    move-object/from16 v3, p2

    iget-object v4, v2, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    .line 141
    .local v4, "context":Landroid/content/Context;
    const/4 v5, 0x0

    .line 143
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 145
    .local v6, "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v7, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 148
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v0, 0x2

    if-eq v7, v0, :cond_0

    .end local v7    # "type":I
    goto :goto_0

    .line 153
    .restart local v7    # "type":I
    :cond_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "nodeName":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 163
    .local v9, "outerDepth":I
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 165
    .local v10, "attrs":Landroid/util/AttributeSet;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, "screenTitle":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v12

    .line 178
    .local v12, "key":Ljava/lang/String;
    iget-object v13, v2, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 179
    .local v13, "fragmentName":Ljava/lang/String;
    iget-object v14, v2, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    .line 180
    .local v14, "intentAction":Ljava/lang/String;
    iget-object v15, v2, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    .line 181
    .local v15, "intentTargetPackage":Ljava/lang/String;
    iget-object v8, v2, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    .line 183
    .local v8, "intentTargetClass":Ljava/lang/String;
    move-object/from16 v17, v0

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "nodeName":Ljava/lang/String;
    .local v17, "nodeName":Ljava/lang/String;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 185
    .local v0, "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    if-eqz v13, :cond_1

    .line 186
    nop

    .line 187
    :try_start_1
    invoke-static {v13, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->getPayloadKeyMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v18
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, v18

    goto :goto_1

    .line 291
    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v7    # "type":I
    .end local v8    # "intentTargetClass":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "fragmentName":Ljava/lang/String;
    .end local v14    # "intentAction":Ljava/lang/String;
    .end local v15    # "intentTargetPackage":Ljava/lang/String;
    .end local v17    # "nodeName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v2, v6

    goto/16 :goto_f

    .line 288
    :catch_0
    move-exception v0

    move-object v2, v6

    goto/16 :goto_b

    .line 286
    :catch_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_c

    .line 284
    :catch_2
    move-exception v0

    move-object v2, v6

    goto/16 :goto_d

    .line 190
    .restart local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .restart local v7    # "type":I
    .restart local v8    # "intentTargetClass":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "fragmentName":Ljava/lang/String;
    .restart local v14    # "intentAction":Ljava/lang/String;
    .restart local v15    # "intentTargetPackage":Ljava/lang/String;
    .restart local v17    # "nodeName":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_2
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 191
    .local v19, "headerTitle":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    .line 192
    .local v20, "headerSummary":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v21, v18

    .line 193
    .local v21, "headerKeywords":Ljava/lang/String;
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    const/16 v16, 0x1

    xor-int/lit8 v18, v18, 0x1

    move/from16 v22, v18

    .line 196
    .local v22, "enabled":Z
    new-instance v2, Lcom/android/settings/search/indexing/IndexData$Builder;

    invoke-direct {v2}, Lcom/android/settings/search/indexing/IndexData$Builder;-><init>()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 197
    .local v2, "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    move-object/from16 v24, v6

    move/from16 v23, v7

    move-object/from16 v7, v19

    :try_start_3
    invoke-virtual {v2, v7}, Lcom/android/settings/search/indexing/IndexData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 198
    .end local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .end local v19    # "headerTitle":Ljava/lang/String;
    .local v7, "headerTitle":Ljava/lang/String;
    .local v23, "type":I
    .local v24, "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    move-object/from16 v25, v2

    move-object/from16 v2, v20

    invoke-virtual {v6, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 199
    .end local v20    # "headerSummary":Ljava/lang/String;
    .local v2, "headerSummary":Ljava/lang/String;
    .local v25, "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    move-object/from16 v26, v2

    move-object/from16 v2, v21

    invoke-virtual {v6, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 200
    .end local v21    # "headerKeywords":Ljava/lang/String;
    .local v2, "headerKeywords":Ljava/lang/String;
    .local v26, "headerSummary":Ljava/lang/String;
    invoke-virtual {v6, v13}, Lcom/android/settings/search/indexing/IndexData$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 201
    invoke-virtual {v6, v11}, Lcom/android/settings/search/indexing/IndexData$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 202
    invoke-virtual {v6, v14}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 203
    invoke-virtual {v6, v15}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 204
    invoke-virtual {v6, v8}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 205
    move-object/from16 v27, v2

    move/from16 v2, v22

    invoke-virtual {v6, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setEnabled(Z)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 206
    .end local v22    # "enabled":Z
    .local v2, "enabled":Z
    .local v27, "headerKeywords":Ljava/lang/String;
    invoke-virtual {v6, v12}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v6

    .line 207
    move/from16 v28, v2

    const/4 v2, -0x1

    .end local v2    # "enabled":Z
    .local v28, "enabled":Z
    invoke-virtual {v6, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setUserId(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 210
    move/from16 v22, v28

    const/4 v6, 0x1

    .line 213
    .end local v28    # "enabled":Z
    .local v6, "isHeaderUnique":Z
    .restart local v22    # "enabled":Z
    :goto_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v29, v2

    .end local v23    # "type":I
    .local v29, "type":I
    move-object/from16 v30, v12

    const/4 v12, 0x1

    if-eq v2, v12, :cond_b

    .end local v12    # "key":Ljava/lang/String;
    .local v30, "key":Ljava/lang/String;
    const/4 v2, 0x3

    move/from16 v12, v29

    if-ne v12, v2, :cond_3

    .line 214
    .end local v29    # "type":I
    .local v12, "type":I
    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-le v2, v9, :cond_2

    goto :goto_3

    .line 281
    :cond_2
    move-object/from16 v45, v0

    move-object/from16 v38, v7

    move/from16 v33, v9

    move-object/from16 v2, v24

    goto/16 :goto_8

    .line 291
    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v6    # "isHeaderUnique":Z
    .end local v7    # "headerTitle":Ljava/lang/String;
    .end local v8    # "intentTargetClass":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "fragmentName":Ljava/lang/String;
    .end local v14    # "intentAction":Ljava/lang/String;
    .end local v15    # "intentTargetPackage":Ljava/lang/String;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v22    # "enabled":Z
    .end local v25    # "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    .end local v26    # "headerSummary":Ljava/lang/String;
    .end local v27    # "headerKeywords":Ljava/lang/String;
    .end local v30    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v24

    goto/16 :goto_f

    .line 288
    :catch_3
    move-exception v0

    move-object/from16 v2, v24

    goto/16 :goto_b

    .line 286
    :catch_4
    move-exception v0

    move-object/from16 v2, v24

    goto/16 :goto_c

    .line 284
    :catch_5
    move-exception v0

    move-object/from16 v2, v24

    goto/16 :goto_d

    .line 215
    .restart local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .restart local v6    # "isHeaderUnique":Z
    .restart local v7    # "headerTitle":Ljava/lang/String;
    .restart local v8    # "intentTargetClass":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v10    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "screenTitle":Ljava/lang/String;
    .restart local v12    # "type":I
    .restart local v13    # "fragmentName":Ljava/lang/String;
    .restart local v14    # "intentAction":Ljava/lang/String;
    .restart local v15    # "intentTargetPackage":Ljava/lang/String;
    .restart local v17    # "nodeName":Ljava/lang/String;
    .restart local v22    # "enabled":Z
    .restart local v25    # "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    .restart local v26    # "headerSummary":Ljava/lang/String;
    .restart local v27    # "headerKeywords":Ljava/lang/String;
    .restart local v30    # "key":Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v2, 0x3

    if-eq v12, v2, :cond_a

    const/4 v2, 0x4

    if-ne v12, v2, :cond_4

    .line 216
    nop

    .line 210
    move-object/from16 v45, v0

    move-object/from16 v38, v7

    move/from16 v33, v9

    move-object/from16 v2, v24

    const/16 v16, 0x1

    goto/16 :goto_7

    .line 219
    :cond_4
    :try_start_5
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .end local v17    # "nodeName":Ljava/lang/String;
    .local v2, "nodeName":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v31, v17

    .line 222
    .local v31, "title":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v32, v17

    .line 223
    .end local v30    # "key":Ljava/lang/String;
    .local v32, "key":Ljava/lang/String;
    move/from16 v33, v9

    move-object/from16 v9, v32

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .end local v32    # "key":Ljava/lang/String;
    .local v9, "key":Ljava/lang/String;
    .local v33, "outerDepth":I
    const/16 v16, 0x1

    xor-int/lit8 v17, v17, 0x1

    move/from16 v34, v17

    .line 224
    .end local v22    # "enabled":Z
    .local v34, "enabled":Z
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v35, v17

    .line 225
    .local v35, "keywords":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v17
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v36, v17

    .line 227
    .local v36, "iconResId":I
    if-eqz v6, :cond_5

    move-object/from16 v3, v31

    :try_start_6
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v31    # "title":Ljava/lang/String;
    .local v3, "title":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 228
    const/4 v6, 0x0

    goto :goto_4

    .line 231
    .end local v3    # "title":Ljava/lang/String;
    .restart local v31    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v3, v31

    .end local v31    # "title":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_6
    :goto_4
    move/from16 v37, v6

    :try_start_7
    new-instance v6, Lcom/android/settings/search/indexing/IndexData$Builder;

    .end local v6    # "isHeaderUnique":Z
    .local v37, "isHeaderUnique":Z
    invoke-direct {v6}, Lcom/android/settings/search/indexing/IndexData$Builder;-><init>()V

    .line 232
    .local v6, "builder":Lcom/android/settings/search/indexing/IndexData$Builder;
    move-object/from16 v38, v7

    invoke-virtual {v6, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 233
    .end local v7    # "headerTitle":Ljava/lang/String;
    .local v38, "headerTitle":Ljava/lang/String;
    move-object/from16 v39, v3

    move-object/from16 v3, v35

    invoke-virtual {v7, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKeywords(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 234
    .end local v35    # "keywords":Ljava/lang/String;
    .local v3, "keywords":Ljava/lang/String;
    .local v39, "title":Ljava/lang/String;
    invoke-virtual {v7, v13}, Lcom/android/settings/search/indexing/IndexData$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 235
    invoke-virtual {v7, v11}, Lcom/android/settings/search/indexing/IndexData$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 236
    move-object/from16 v40, v3

    move/from16 v3, v36

    invoke-virtual {v7, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIconResId(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 237
    .end local v36    # "iconResId":I
    .local v3, "iconResId":I
    .local v40, "keywords":Ljava/lang/String;
    invoke-virtual {v7, v14}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 238
    invoke-virtual {v7, v15}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 239
    invoke-virtual {v7, v8}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 240
    move/from16 v41, v3

    move/from16 v3, v34

    invoke-virtual {v7, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setEnabled(Z)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 241
    .end local v34    # "enabled":Z
    .local v3, "enabled":Z
    .local v41, "iconResId":I
    invoke-virtual {v7, v9}, Lcom/android/settings/search/indexing/IndexData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v7

    .line 242
    move/from16 v42, v3

    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setUserId(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 244
    .end local v3    # "enabled":Z
    .local v42, "enabled":Z
    const-string v7, "CheckBoxPreference"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 245
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    .line 247
    .local v7, "summary":Ljava/lang/String;
    const/16 v17, 0x0

    .line 249
    .local v17, "entries":Ljava/lang/String;
    const-string v3, "ListPreference"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_7

    .line 250
    :try_start_8
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v17, v3

    goto :goto_5

    .line 254
    :cond_7
    move-object/from16 v3, v17

    .end local v17    # "entries":Ljava/lang/String;
    .local v3, "entries":Ljava/lang/String;
    :goto_5
    :try_start_9
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings/search/ResultPayload;

    move-object/from16 v43, v17

    .line 255
    .local v43, "payload":Lcom/android/settings/search/ResultPayload;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataChildFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v44, v17

    .line 257
    .local v44, "childFragment":Ljava/lang/String;
    move-object/from16 v45, v0

    invoke-virtual {v6, v7}, Lcom/android/settings/search/indexing/IndexData$Builder;->setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v0

    .line 258
    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .local v45, "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    invoke-virtual {v0, v3}, Lcom/android/settings/search/indexing/IndexData$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v0

    .line 259
    move-object/from16 v46, v2

    move-object/from16 v2, v44

    invoke-virtual {v0, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setChildClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v0

    .line 260
    .end local v44    # "childFragment":Ljava/lang/String;
    .local v2, "childFragment":Ljava/lang/String;
    .local v46, "nodeName":Ljava/lang/String;
    move-object/from16 v47, v2

    move-object/from16 v2, v43

    invoke-virtual {v0, v2}, Lcom/android/settings/search/indexing/IndexData$Builder;->setPayload(Lcom/android/settings/search/ResultPayload;)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 262
    .end local v43    # "payload":Lcom/android/settings/search/ResultPayload;
    .local v2, "payload":Lcom/android/settings/search/ResultPayload;
    .local v47, "childFragment":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/settings/search/indexing/IndexDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/settings/search/indexing/IndexData$Builder;->build(Landroid/content/Context;)Lcom/android/settings/search/indexing/IndexData;

    move-result-object v0
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v48, v2

    move-object/from16 v2, v24

    :try_start_a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v3    # "entries":Ljava/lang/String;
    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v2, "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v48, "payload":Lcom/android/settings/search/ResultPayload;
    goto :goto_6

    .line 267
    .end local v7    # "summary":Ljava/lang/String;
    .end local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v46    # "nodeName":Ljava/lang/String;
    .end local v47    # "childFragment":Ljava/lang/String;
    .end local v48    # "payload":Lcom/android/settings/search/ResultPayload;
    .restart local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .local v2, "nodeName":Ljava/lang/String;
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :cond_8
    move-object/from16 v45, v0

    move-object/from16 v46, v2

    move-object/from16 v2, v24

    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v2, "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .restart local v46    # "nodeName":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "summaryOn":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "summaryOff":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 271
    invoke-static {v4, v10}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 274
    :cond_9
    invoke-virtual {v6, v0}, Lcom/android/settings/search/indexing/IndexData$Builder;->setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 276
    iget-object v7, v1, Lcom/android/settings/search/indexing/IndexDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/settings/search/indexing/IndexData$Builder;->build(Landroid/content/Context;)Lcom/android/settings/search/indexing/IndexData;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v0    # "summaryOn":Ljava/lang/String;
    .end local v3    # "summaryOff":Ljava/lang/String;
    nop

    .line 210
    .end local v6    # "builder":Lcom/android/settings/search/indexing/IndexData$Builder;
    .end local v39    # "title":Ljava/lang/String;
    .end local v40    # "keywords":Ljava/lang/String;
    .end local v41    # "iconResId":I
    :goto_6
    move-object/from16 v24, v2

    move/from16 v23, v12

    move/from16 v6, v37

    move-object/from16 v7, v38

    move/from16 v22, v42

    move-object/from16 v0, v45

    move-object/from16 v17, v46

    const/4 v2, -0x1

    move-object/from16 v3, p2

    move-object v12, v9

    move/from16 v9, v33

    goto/16 :goto_2

    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .end local v33    # "outerDepth":I
    .end local v37    # "isHeaderUnique":Z
    .end local v38    # "headerTitle":Ljava/lang/String;
    .end local v42    # "enabled":Z
    .end local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v46    # "nodeName":Ljava/lang/String;
    .local v0, "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .local v6, "isHeaderUnique":Z
    .local v7, "headerTitle":Ljava/lang/String;
    .local v9, "outerDepth":I
    .local v17, "nodeName":Ljava/lang/String;
    .restart local v22    # "enabled":Z
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v30    # "key":Ljava/lang/String;
    :cond_a
    move-object/from16 v45, v0

    move-object/from16 v38, v7

    move/from16 v33, v9

    move-object/from16 v2, v24

    const/16 v16, 0x1

    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v7    # "headerTitle":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v33    # "outerDepth":I
    .restart local v38    # "headerTitle":Ljava/lang/String;
    .restart local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    :goto_7
    move-object/from16 v24, v2

    move/from16 v23, v12

    move-object/from16 v12, v30

    move/from16 v9, v33

    move-object/from16 v7, v38

    move-object/from16 v0, v45

    const/4 v2, -0x1

    move-object/from16 v3, p2

    goto/16 :goto_2

    .line 281
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .end local v12    # "type":I
    .end local v33    # "outerDepth":I
    .end local v38    # "headerTitle":Ljava/lang/String;
    .end local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .restart local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .restart local v7    # "headerTitle":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v29    # "type":I
    :cond_b
    move-object/from16 v45, v0

    move-object/from16 v38, v7

    move/from16 v33, v9

    move-object/from16 v2, v24

    move/from16 v12, v29

    .end local v0    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    .end local v7    # "headerTitle":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .end local v29    # "type":I
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v12    # "type":I
    .restart local v33    # "outerDepth":I
    .restart local v38    # "headerTitle":Ljava/lang/String;
    .restart local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    :goto_8
    if-eqz v6, :cond_c

    .line 282
    iget-object v0, v1, Lcom/android/settings/search/indexing/IndexDataConverter;->mContext:Landroid/content/Context;

    move-object/from16 v3, v25

    invoke-virtual {v3, v0}, Lcom/android/settings/search/indexing/IndexData$Builder;->build(Landroid/content/Context;)Lcom/android/settings/search/indexing/IndexData;

    move-result-object v0

    .end local v25    # "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    .local v3, "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v3    # "headerBuilder":Lcom/android/settings/search/indexing/IndexData$Builder;
    .end local v6    # "isHeaderUnique":Z
    .end local v8    # "intentTargetClass":Ljava/lang/String;
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "screenTitle":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "fragmentName":Ljava/lang/String;
    .end local v14    # "intentAction":Ljava/lang/String;
    .end local v15    # "intentTargetPackage":Ljava/lang/String;
    .end local v17    # "nodeName":Ljava/lang/String;
    .end local v22    # "enabled":Z
    .end local v26    # "headerSummary":Ljava/lang/String;
    .end local v27    # "headerKeywords":Ljava/lang/String;
    .end local v30    # "key":Ljava/lang/String;
    .end local v33    # "outerDepth":I
    .end local v38    # "headerTitle":Ljava/lang/String;
    .end local v45    # "controllerUriMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/settings/search/ResultPayload;>;"
    goto :goto_9

    .line 288
    :catch_6
    move-exception v0

    goto :goto_b

    .line 286
    :catch_7
    move-exception v0

    goto :goto_c

    .line 284
    :catch_8
    move-exception v0

    goto :goto_d

    .line 291
    :cond_c
    :goto_9
    if-eqz v5, :cond_d

    :goto_a
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_e

    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v2, v24

    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    goto :goto_f

    .line 288
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_9
    move-exception v0

    move-object/from16 v2, v24

    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    goto :goto_b

    .line 286
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_a
    move-exception v0

    move-object/from16 v2, v24

    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    goto :goto_c

    .line 284
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_b
    move-exception v0

    move-object/from16 v2, v24

    .end local v24    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    goto :goto_d

    .line 291
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v6, "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catchall_3
    move-exception v0

    move-object v2, v6

    .end local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    goto :goto_f

    .line 288
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_c
    move-exception v0

    move-object v2, v6

    .line 289
    .end local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :goto_b
    :try_start_b
    const-string v3, "IndexDataConverter"

    const-string v6, "Resoucre not found error parsing PreferenceScreen: "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v5, :cond_d

    goto :goto_a

    .line 286
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_d
    move-exception v0

    move-object v2, v6

    .line 287
    .end local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :goto_c
    const-string v3, "IndexDataConverter"

    const-string v6, "IO Error parsing PreferenceScreen: "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_d

    goto :goto_a

    .line 284
    .end local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .restart local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :catch_e
    move-exception v0

    move-object v2, v6

    .line 285
    .end local v6    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "resourceIndexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :goto_d
    const-string v3, "IndexDataConverter"

    const-string v6, "XML Error parsing PreferenceScreen: "

    invoke-static {v3, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 291
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v5, :cond_d

    goto :goto_a

    .line 293
    :cond_d
    :goto_e
    return-object v2

    .line 291
    :catchall_4
    move-exception v0

    :goto_f
    if-eqz v5, :cond_e

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    throw v0
.end method

.method private getNonIndexableKeysForResource(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    .local p1, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 300
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    :goto_0
    return-object v0
.end method


# virtual methods
.method public convertPreIndexDataToIndexData(Lcom/android/settings/search/indexing/PreIndexData;)Ljava/util/List;
    .locals 11
    .param p1, "preIndexData"    # Lcom/android/settings/search/indexing/PreIndexData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/indexing/PreIndexData;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/indexing/IndexData;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .local v0, "current":J
    iget-object v2, p1, Lcom/android/settings/search/indexing/PreIndexData;->dataToUpdate:Ljava/util/List;

    .line 74
    .local v2, "indexableData":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    iget-object v3, p1, Lcom/android/settings/search/indexing/PreIndexData;->nonIndexableKeys:Ljava/util/Map;

    .line 75
    .local v3, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v4, "indexData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/provider/SearchIndexableData;

    .line 78
    .local v6, "data":Landroid/provider/SearchIndexableData;
    instance-of v7, v6, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v7, :cond_1

    .line 79
    move-object v7, v6

    check-cast v7, Lcom/android/settings/search/SearchIndexableRaw;

    .line 80
    .local v7, "rawData":Lcom/android/settings/search/SearchIndexableRaw;
    iget-object v8, v7, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 82
    .local v8, "rawNonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v7, v8}, Lcom/android/settings/search/indexing/IndexDataConverter;->convertRaw(Lcom/android/settings/search/SearchIndexableRaw;Ljava/util/Set;)Lcom/android/settings/search/indexing/IndexData$Builder;

    move-result-object v9

    .line 84
    .local v9, "builder":Lcom/android/settings/search/indexing/IndexData$Builder;
    if-eqz v9, :cond_0

    .line 85
    iget-object v10, p0, Lcom/android/settings/search/indexing/IndexDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/android/settings/search/indexing/IndexData$Builder;->build(Landroid/content/Context;)Lcom/android/settings/search/indexing/IndexData;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v7    # "rawData":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v8    # "rawNonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "builder":Lcom/android/settings/search/indexing/IndexData$Builder;
    :cond_0
    goto :goto_1

    :cond_1
    instance-of v7, v6, Landroid/provider/SearchIndexableResource;

    if-eqz v7, :cond_2

    .line 88
    move-object v7, v6

    check-cast v7, Landroid/provider/SearchIndexableResource;

    .line 89
    .local v7, "sir":Landroid/provider/SearchIndexableResource;
    iget-object v8, v7, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    .line 90
    invoke-direct {p0, v3, v8}, Lcom/android/settings/search/indexing/IndexDataConverter;->getNonIndexableKeysForResource(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 91
    .local v8, "resourceNonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v7, v8}, Lcom/android/settings/search/indexing/IndexDataConverter;->convertResource(Landroid/provider/SearchIndexableResource;Ljava/util/Set;)Ljava/util/List;

    move-result-object v9

    .line 92
    .local v9, "resourceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    invoke-interface {v4, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    .end local v6    # "data":Landroid/provider/SearchIndexableData;
    .end local v7    # "sir":Landroid/provider/SearchIndexableResource;
    .end local v8    # "resourceNonIndexableKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "resourceData":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/indexing/IndexData;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 96
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 97
    .local v5, "endConversion":J
    const-string v7, "IndexDataConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Converting pre-index data to index data took: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v5, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v4
.end method
