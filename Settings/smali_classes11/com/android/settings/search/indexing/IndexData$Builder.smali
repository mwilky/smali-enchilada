.class public Lcom/android/settings/search/indexing/IndexData$Builder;
.super Ljava/lang/Object;
.source "IndexData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/indexing/IndexData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChildClassName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mEnabled:Z

.field private mEntries:Ljava/lang/String;

.field private mIconResId:I

.field private mIntentAction:Ljava/lang/String;

.field private mIntentTargetClass:Ljava/lang/String;

.field private mIntentTargetPackage:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mPayload:Lcom/android/settings/search/ResultPayload;

.field private mPayloadType:I

.field private mScreenTitle:Ljava/lang/String;

.field private mSummaryOn:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mSummaryOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/search/indexing/IndexData$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-boolean v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/search/indexing/IndexData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mUserId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/search/indexing/IndexData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayloadType:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/search/indexing/IndexData$Builder;)Lcom/android/settings/search/ResultPayload;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mEntries:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mChildClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mScreenTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/search/indexing/IndexData$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIconResId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/search/indexing/IndexData$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 160
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method private buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 290
    .local v0, "isEmptyIntentAction":Z
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mScreenTitle:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 295
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentAction:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetClass:Ljava/lang/String;

    .line 297
    .local v2, "targetClass":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetPackage:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 303
    .end local v3    # "component":Landroid/content/ComponentName;
    :cond_1
    const-string v3, ":settings:fragment_args_key"

    iget-object v4, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    .end local v2    # "targetClass":Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method private setIntent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 274
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    if-eqz v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->buildIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/search/ResultPayload;

    invoke-direct {v1, v0}, Lcom/android/settings/search/ResultPayload;-><init>(Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    .line 279
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayloadType:I

    .line 280
    return-void
.end method

.method private setPayloadType(I)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "payloadType"    # I

    .line 265
    iput p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayloadType:I

    .line 266
    return-object p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/android/settings/search/indexing/IndexData;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 309
    invoke-direct {p0, p1}, Lcom/android/settings/search/indexing/IndexData$Builder;->setIntent(Landroid/content/Context;)V

    .line 310
    new-instance v0, Lcom/android/settings/search/indexing/IndexData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search/indexing/IndexData;-><init>(Lcom/android/settings/search/indexing/IndexData$Builder;Lcom/android/settings/search/indexing/IndexData$1;)V

    return-object v0
.end method

.method public setChildClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "childClassName"    # Ljava/lang/String;

    .line 200
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mChildClassName:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mClassName:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mEnabled:Z

    .line 236
    return-object p0
.end method

.method public setEntries(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "entries"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mEntries:Ljava/lang/String;

    .line 191
    return-object p0
.end method

.method public setIconResId(I)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "iconResId"    # I

    .line 210
    iput p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIconResId:I

    .line 211
    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "intentAction"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentAction:Ljava/lang/String;

    .line 221
    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "intentTargetClass"    # Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetClass:Ljava/lang/String;

    .line 231
    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "intentTargetPackage"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mIntentTargetPackage:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKey:Ljava/lang/String;

    .line 241
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "keywords"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mKeywords:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setPayload(Lcom/android/settings/search/ResultPayload;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 1
    .param p1, "payload"    # Lcom/android/settings/search/ResultPayload;

    .line 250
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    .line 252
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mPayload:Lcom/android/settings/search/ResultPayload;

    invoke-virtual {v0}, Lcom/android/settings/search/ResultPayload;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/indexing/IndexData$Builder;->setPayloadType(I)Lcom/android/settings/search/indexing/IndexData$Builder;

    .line 255
    :cond_0
    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "screenTitle"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mScreenTitle:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setSummaryOn(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "summaryOn"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mSummaryOn:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mTitle:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/search/indexing/IndexData$Builder;
    .locals 0
    .param p1, "userId"    # I

    .line 245
    iput p1, p0, Lcom/android/settings/search/indexing/IndexData$Builder;->mUserId:I

    .line 246
    return-object p0
.end method
