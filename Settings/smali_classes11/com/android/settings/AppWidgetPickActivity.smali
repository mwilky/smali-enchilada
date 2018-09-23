.class public Lcom/android/settings/AppWidgetPickActivity;
.super Lcom/android/settings/ActivityPicker;
.source "AppWidgetPickActivity.java"

# interfaces
.implements Lcom/android/settings/AppWidgetLoader$ItemConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/ActivityPicker;",
        "Lcom/android/settings/AppWidgetLoader$ItemConstructor<",
        "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
        ">;"
    }
.end annotation


# static fields
.field static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "AppWidgetPickActivity"


# instance fields
.field private mAppWidgetId:I

.field private mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/AppWidgetLoader<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ActivityPicker;-><init>()V

    return-void
.end method


# virtual methods
.method public createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    .locals 7

    iget-object v0, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-eqz v2, :cond_5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd5

    if-eq v3, v4, :cond_1

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_2

    const/16 v4, 0x140

    if-eq v3, v4, :cond_3

    const/16 v4, 0x1e0

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_0
    nop

    :cond_1
    nop

    :cond_2
    nop

    :cond_3
    nop

    :cond_4
    nop

    :goto_0
    int-to-float v4, v3

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AppWidgetPickActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t load icon drawable 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v1, :cond_5

    const-string v2, "AppWidgetPickActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load icon drawable 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/settings/ActivityPicker$PickAdapter$Item;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    iput-object p3, v2, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    return-object v2
.end method

.method public bridge synthetic createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/AppWidgetPickActivity;->createItem(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    move-result-object p1

    return-object p1
.end method

.method protected getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/AppWidgetLoader;->getItems(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/settings/AppWidgetPickActivity;->getIntentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    iget-object v2, v1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "appWidgetOptions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    :cond_1
    iget-object v3, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v0, Lcom/android/settings/AppWidgetLoader;

    iget-object v1, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/settings/AppWidgetLoader;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;Lcom/android/settings/AppWidgetLoader$ItemConstructor;)V

    iput-object v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetLoader:Lcom/android/settings/AppWidgetLoader;

    invoke-super {p0, p1}, Lcom/android/settings/ActivityPicker;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AppWidgetPickActivity;->setResultData(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppWidgetPickActivity;->finish()V

    :goto_0
    return-void
.end method

.method setResultData(ILandroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :goto_0
    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/android/settings/AppWidgetPickActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/AppWidgetPickActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
