.class public Lcom/android/systemui/shared/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/Task$TaskKey;,
        Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;
    }
.end annotation


# instance fields
.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isTaskLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/ThumbnailData;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZ)V
    .locals 17
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "thumbnail"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "titleDescription"    # Ljava/lang/String;
    .param p6, "colorPrimary"    # I
    .param p7, "colorBackground"    # I
    .param p8, "isLaunchTarget"    # Z
    .param p9, "isStackTask"    # Z
    .param p10, "isSystemApp"    # Z
    .param p11, "isDockable"    # Z
    .param p12, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p13, "resizeMode"    # I
    .param p14, "topActivity"    # Landroid/content/ComponentName;
    .param p15, "isLocked"    # Z
    .param p16, "isTaskLocked"    # Z

    move-object/from16 v0, p0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    .line 202
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 203
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 204
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 205
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    .line 206
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 207
    move/from16 v6, p6

    iput v6, v0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    .line 208
    move/from16 v7, p7

    iput v7, v0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    .line 209
    iget v8, v0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/android/systemui/shared/recents/utilities/Utilities;->computeContrastBetweenColors(II)F

    move-result v8

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iput-boolean v8, v0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 211
    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 212
    move/from16 v9, p8

    iput-boolean v9, v0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    .line 213
    move/from16 v10, p9

    iput-boolean v10, v0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    .line 214
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    .line 215
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 216
    move/from16 v13, p13

    iput v13, v0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    .line 217
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 218
    move/from16 v15, p15

    iput-boolean v15, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    .line 221
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    .line 223
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    .line 254
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1
    .param p1, "o"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 229
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 230
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 231
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 232
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 234
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    .line 235
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    .line 236
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 237
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 238
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    .line 239
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    .line 240
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    .line 241
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 242
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    .line 243
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    .line 244
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 246
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    .line 248
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v0, :cond_0

    .line 318
    const-string v0, " dockable=N"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz v0, :cond_1

    .line 321
    const-string v0, " launchTarget=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz v0, :cond_2

    .line 324
    const-string v0, " locked=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isTaskLocked:Z

    if-eqz v0, :cond_3

    .line 329
    const-string v0, " TaskLocked=Y"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    :cond_3
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 334
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    .line 307
    .local v0, "t":Lcom/android/systemui/shared/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0
.end method

.method public notifyTaskDataLoaded(Lcom/android/systemui/shared/recents/model/ThumbnailData;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p2, "applicationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 277
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 278
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 279
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v2, p0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "defaultApplicationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 287
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    .line 289
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
