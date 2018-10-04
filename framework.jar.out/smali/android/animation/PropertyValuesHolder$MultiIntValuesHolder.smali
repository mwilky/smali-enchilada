.class Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIntValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method


# virtual methods
.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 12

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v1, v0

    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {p1, v2, v3, v0}, Landroid/animation/PropertyValuesHolder;->access$1200(Ljava/lang/Object;J[I)V

    goto :goto_0

    :pswitch_0
    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v2, v0, v4

    aget v3, v0, v3

    invoke-static {p1, v5, v6, v2, v3}, Landroid/animation/PropertyValuesHolder;->access$1000(Ljava/lang/Object;JII)V

    goto :goto_0

    :pswitch_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v4, v0, v4

    invoke-static {p1, v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->access$200(Ljava/lang/Object;JI)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v8, v0, v4

    aget v9, v0, v3

    const/4 v2, 0x2

    aget v10, v0, v2

    const/4 v2, 0x3

    aget v11, v0, v2

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/animation/PropertyValuesHolder;->access$1100(Ljava/lang/Object;JIIII)V

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 9

    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    :cond_1
    if-nez v2, :cond_3

    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->calculateValue(F)V

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v3, v5}, Landroid/animation/PropertyValuesHolder;->access$1300(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p1, v7, v5}, Landroid/animation/PropertyValuesHolder;->access$1300(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v7

    :goto_0
    if-nez v1, :cond_2

    :try_start_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    sget-object v6, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v6, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method
