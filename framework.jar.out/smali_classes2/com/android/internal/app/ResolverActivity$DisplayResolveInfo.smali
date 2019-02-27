.class public final Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/CharSequence;

.field private final mExtendedInfo:Ljava/lang/CharSequence;

.field private mIsParallelApp:Z

.field private mPinned:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolvedIntent:Landroid/content/Intent;

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "originalIntent"    # Landroid/content/Intent;
    .param p3, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "pLabel"    # Ljava/lang/CharSequence;
    .param p5, "pInfo"    # Ljava/lang/CharSequence;
    .param p6, "pOrigIntent"    # Landroid/content/Intent;

    .line 1158
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 1159
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1160
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1161
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 1162
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 1164
    new-instance v0, Landroid/content/Intent;

    if-eqz p6, :cond_0

    .line 1165
    move-object v1, p6

    goto :goto_0

    :cond_0
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1166
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1168
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1169
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1171
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 1172
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "other"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .line 1174
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 1175
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1176
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1177
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 1178
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1179
    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 1180
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 1181
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 1182
    iget-boolean v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    .line 1183
    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 1142
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "alt"    # Landroid/content/Intent;

    .line 1243
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 1234
    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1209
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1210
    return-object v1

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, v1, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1220
    :cond_2
    :goto_0
    return-object v1

    .line 1224
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 5

    .line 1193
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mIsParallelApp:Z

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x50c0031

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .line 1255
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 1186
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 1264
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 1301
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1247
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 1248
    return-void
.end method

.method public setParallelApp(Z)V
    .locals 3
    .param p1, "parallelApp"    # Z

    .line 1311
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParallelApp: mIsParallelApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mIsParallelApp:Z

    .line 1313
    return-void
.end method

.method public setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .line 1305
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    .line 1306
    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1270
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1271
    const/4 v0, 0x1

    return v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 1283
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mIsParallelApp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    goto :goto_0

    .line 1286
    :cond_0
    const-string v0, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityAsCaller with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for userId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/OnePlusParallelAppUtils;->pLogd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, v1, v3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 1290
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1295
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1296
    const/4 v0, 0x0

    return v0
.end method
