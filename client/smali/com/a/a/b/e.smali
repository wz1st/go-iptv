.class public final Lcom/a/a/b/e;
.super Ljava/lang/Object;


# static fields
.field protected static final s:[I

.field public static final t:[C

.field static final u:[I

.field public static final v:[Z

.field public static final w:[Z

.field private static x:Z

.field private static final y:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:I

.field public c:I

.field protected d:C

.field protected e:I

.field protected f:I

.field protected g:[C

.field protected h:I

.field protected i:I

.field protected j:Z

.field public k:Ljava/util/TimeZone;

.field public l:Ljava/util/Locale;

.field protected m:Ljava/util/Calendar;

.field public n:I

.field protected final o:Ljava/lang/String;

.field protected final p:I

.field protected q:Ljava/lang/String;

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x100

    const/16 v4, 0x61

    const/16 v3, 0x41

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    :try_start_0
    const-string v5, "android.os.Build$VERSION"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "SDK_INT"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v5, 0x17

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/a/a/b/e;->x:Z

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/a/a/b/e;->y:Ljava/lang/ThreadLocal;

    const/16 v0, 0x67

    new-array v0, v0, [I

    sput-object v0, Lcom/a/a/b/e;->s:[I

    const/16 v0, 0x30

    :goto_2
    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    sget-object v5, Lcom/a/a/b/e;->s:[I

    add-int/lit8 v6, v0, -0x30

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_3
    const/16 v5, 0x66

    if-gt v0, v5, :cond_2

    sget-object v5, Lcom/a/a/b/e;->s:[I

    add-int/lit8 v6, v0, -0x61

    add-int/lit8 v6, v6, 0xa

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    move v0, v3

    :goto_4
    const/16 v5, 0x46

    if-gt v0, v5, :cond_3

    sget-object v5, Lcom/a/a/b/e;->s:[I

    add-int/lit8 v6, v0, -0x41

    add-int/lit8 v6, v6, 0xa

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/b/e;->t:[C

    new-array v0, v8, [I

    sput-object v0, Lcom/a/a/b/e;->u:[I

    sget-object v0, Lcom/a/a/b/e;->u:[I

    const/4 v5, -0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcom/a/a/b/e;->t:[C

    array-length v5, v0

    move v0, v2

    :goto_5
    if-ge v0, v5, :cond_4

    sget-object v6, Lcom/a/a/b/e;->u:[I

    sget-object v7, Lcom/a/a/b/e;->t:[C

    aget-char v7, v7, v0

    aput v0, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/a/a/b/e;->u:[I

    const/16 v5, 0x3d

    aput v2, v0, v5

    new-array v0, v8, [Z

    sput-object v0, Lcom/a/a/b/e;->v:[Z

    move v0, v2

    :goto_6
    sget-object v5, Lcom/a/a/b/e;->v:[Z

    array-length v5, v5

    if-ge v0, v5, :cond_8

    if-lt v0, v3, :cond_6

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_6

    sget-object v5, Lcom/a/a/b/e;->v:[Z

    aput-boolean v1, v5, v0

    :cond_5
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_6
    if-lt v0, v4, :cond_7

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_7

    sget-object v5, Lcom/a/a/b/e;->v:[Z

    aput-boolean v1, v5, v0

    goto :goto_7

    :cond_7
    const/16 v5, 0x5f

    if-ne v0, v5, :cond_5

    sget-object v5, Lcom/a/a/b/e;->v:[Z

    aput-boolean v1, v5, v0

    goto :goto_7

    :cond_8
    new-array v0, v8, [Z

    sput-object v0, Lcom/a/a/b/e;->w:[Z

    :goto_8
    sget-object v0, Lcom/a/a/b/e;->w:[Z

    array-length v0, v0

    if-ge v2, v0, :cond_d

    if-lt v2, v3, :cond_a

    const/16 v0, 0x5a

    if-gt v2, v0, :cond_a

    sget-object v0, Lcom/a/a/b/e;->w:[Z

    aput-boolean v1, v0, v2

    :cond_9
    :goto_9
    add-int/lit8 v0, v2, 0x1

    int-to-char v2, v0

    goto :goto_8

    :cond_a
    if-lt v2, v4, :cond_b

    const/16 v0, 0x7a

    if-gt v2, v0, :cond_b

    sget-object v0, Lcom/a/a/b/e;->w:[Z

    aput-boolean v1, v0, v2

    goto :goto_9

    :cond_b
    const/16 v0, 0x5f

    if-ne v2, v0, :cond_c

    sget-object v0, Lcom/a/a/b/e;->w:[Z

    aput-boolean v1, v0, v2

    goto :goto_9

    :cond_c
    const/16 v0, 0x30

    if-lt v2, v0, :cond_9

    const/16 v0, 0x39

    if-gt v2, v0, :cond_9

    sget-object v0, Lcom/a/a/b/e;->w:[Z

    aput-boolean v1, v0, v2

    goto :goto_9

    :cond_d
    return-void

    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/a/a/a;->c:I

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/a/a/a;->c:I

    iput v0, p0, Lcom/a/a/b/e;->c:I

    sget-object v0, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    sget-object v0, Lcom/a/a/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    iput-object v1, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    iput v2, p0, Lcom/a/a/b/e;->n:I

    sget-object v0, Lcom/a/a/b/e;->y:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/a/a/b/e;->g:[C

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    if-nez v0, :cond_0

    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/a/a/b/e;->g:[C

    :cond_0
    iput p2, p0, Lcom/a/a/b/e;->c:I

    iput-object p1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/a/a/b/e;->p:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_2

    const/16 v0, 0x1a

    :goto_0
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const v3, 0xfeff

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :cond_1
    sget-object v0, Lcom/a/a/b/d;->m:Lcom/a/a/b/d;

    iget v0, v0, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/a/a/b/e;->q:Ljava/lang/String;

    sget-object v0, Lcom/a/a/b/d;->l:Lcom/a/a/b/d;

    iget v0, v0, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/a/a/b/e;->r:Z

    return-void

    :cond_2
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v1, "false"

    iget v2, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/b/e;->a:I

    return-void

    :cond_1
    new-instance v0, Lcom/a/a/d;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private B()V
    .locals 2

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/b/e;->j:Z

    :cond_0
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/e;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lcom/a/a/b/e;->a:I

    :goto_0
    return-void

    :cond_1
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_3
    const-string v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_4
    const-string v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_5
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_6
    const-string v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x12

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_0
.end method

.method private static a([CI)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-array v4, p1, [C

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v0, p1, :cond_1

    aget-char v5, p0, v0

    const/16 v1, 0x5c

    if-eq v5, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    aput-char v5, v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p0, v0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/a/a/d;

    const-string v1, "unclosed.str.lit"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    add-int/lit8 v1, v3, 0x1

    aput-char v2, v4, v3

    goto :goto_1

    :sswitch_1
    add-int/lit8 v1, v3, 0x1

    aput-char v8, v4, v3

    goto :goto_1

    :sswitch_2
    add-int/lit8 v1, v3, 0x1

    aput-char v9, v4, v3

    goto :goto_1

    :sswitch_3
    add-int/lit8 v1, v3, 0x1

    aput-char v10, v4, v3

    goto :goto_1

    :sswitch_4
    add-int/lit8 v1, v3, 0x1

    aput-char v11, v4, v3

    goto :goto_1

    :sswitch_5
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_6
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_7
    add-int/lit8 v1, v3, 0x1

    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_8
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_9
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_a
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_b
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_c
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_d
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_e
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_f
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_10
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_11
    add-int/lit8 v1, v3, 0x1

    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_12
    add-int/lit8 v1, v3, 0x1

    sget-object v5, Lcom/a/a/b/e;->s:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v6, p0, v0

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/a/a/b/e;->s:[I

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_13
    add-int/lit8 v1, v3, 0x1

    new-instance v5, Ljava/lang/String;

    new-array v6, v11, [C

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v2

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v8

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v9

    add-int/lit8 v0, v0, 0x1

    aget-char v7, p0, v0

    aput-char v7, v6, v10

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private a(CCCCCCCC)V
    .locals 5

    iget-object v0, p0, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    add-int/lit8 v0, p1, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, p2, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    add-int/lit8 v1, p3, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x30

    add-int/2addr v0, v1

    add-int/lit8 v1, p5, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p6, -0x30

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, p7, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, p8, -0x30

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method static a(CCCCCC)Z
    .locals 6

    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_0

    if-eq p3, v2, :cond_3

    goto :goto_0

    :cond_7
    if-ne p4, v5, :cond_0

    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method static a(CCCCCCII)Z
    .locals 5

    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    if-ne p4, v2, :cond_4

    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    :cond_2
    if-ne p6, v2, :cond_5

    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_0

    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 13

    const/16 v7, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_a

    sget-object v3, Lcom/a/a/b/e;->u:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    if-gez v3, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_2
    if-lez v9, :cond_1

    sget-object v0, Lcom/a/a/b/e;->u:[I

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-gez v0, :cond_1

    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_4

    add-int/lit8 v0, v9, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_3

    const/4 v0, 0x2

    move v8, v0

    :goto_3
    sub-int v0, v9, v6

    add-int/lit8 v3, v0, 0x1

    if-le v2, v7, :cond_6

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    div-int/lit8 v0, v3, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    :goto_5
    sub-int v2, v3, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v10, v2, v8

    new-array v4, v10, [B

    div-int/lit8 v2, v10, 0x3

    mul-int/lit8 v7, v2, 0x3

    move v2, v1

    move v5, v1

    :goto_6
    if-ge v5, v7, :cond_7

    sget-object v3, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v3, v3, v6

    shl-int/lit8 v3, v3, 0x12

    sget-object v6, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v3, v6

    sget-object v6, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v3

    sget-object v12, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v6, v11

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v6, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    add-int/lit8 v5, v12, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v12

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x13

    if-ne v2, v6, :cond_2

    add-int/lit8 v3, v3, 0x2

    move v2, v1

    :cond_2
    move v6, v3

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_4
    move v8, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    if-ge v5, v10, :cond_9

    move v0, v1

    move v3, v1

    :goto_7
    sub-int v1, v9, v8

    if-gt v6, v1, :cond_8

    sget-object v1, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    mul-int/lit8 v2, v0, 0x6

    rsub-int/lit8 v2, v2, 0x12

    shl-int/2addr v1, v2

    or-int v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    move v3, v2

    move v6, v7

    goto :goto_7

    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v10, :cond_9

    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v9, v0

    goto/16 :goto_2
.end method

.method public static final a(Ljava/lang/String;II)[B
    .locals 13

    const/16 v5, 0x4c

    const/16 v4, 0x3d

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array v0, v1, [B

    :goto_0
    return-object v0

    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v6, p1

    :goto_1
    if-ge v6, v0, :cond_a

    sget-object v2, Lcom/a/a/b/e;->u:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v2, v2, v3

    if-gez v2, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :goto_2
    if-lez v9, :cond_1

    sget-object v0, Lcom/a/a/b/e;->u:[I

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_1

    add-int/lit8 v0, v9, -0x1

    move v9, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_4

    add-int/lit8 v0, v9, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x2

    move v8, v0

    :goto_3
    sub-int v0, v9, v6

    add-int/lit8 v2, v0, 0x1

    if-le p2, v5, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_5

    div-int/lit8 v0, v2, 0x4e

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    :goto_5
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v10, v2, v8

    new-array v4, v10, [B

    div-int/lit8 v2, v10, 0x3

    mul-int/lit8 v7, v2, 0x3

    move v2, v1

    move v5, v1

    :goto_6
    if-ge v5, v7, :cond_7

    sget-object v3, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v3, v3, v6

    shl-int/lit8 v3, v3, 0x12

    sget-object v6, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v6, v6, v11

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v3, v6

    sget-object v6, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v6, v6, v12

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v3

    sget-object v12, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v6, v11

    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v6, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    add-int/lit8 v5, v12, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v12

    if-lez v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x13

    if-ne v2, v6, :cond_2

    add-int/lit8 v3, v3, 0x2

    move v2, v1

    :cond_2
    move v6, v3

    goto :goto_6

    :cond_3
    const/4 v0, 0x1

    move v8, v0

    goto :goto_3

    :cond_4
    move v8, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5

    :cond_7
    if-ge v5, v10, :cond_9

    move v0, v1

    move v3, v1

    :goto_7
    sub-int v1, v9, v8

    if-gt v6, v1, :cond_8

    sget-object v1, Lcom/a/a/b/e;->u:[I

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    mul-int/lit8 v2, v0, 0x6

    rsub-int/lit8 v2, v2, 0x12

    shl-int/2addr v1, v2

    or-int v2, v3, v1

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    move v3, v2

    move v6, v7

    goto :goto_7

    :cond_8
    const/16 v0, 0x10

    move v1, v5

    :goto_8
    if-ge v1, v10, :cond_9

    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_8

    :cond_9
    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    move v9, v0

    goto/16 :goto_2
.end method

.method private final b(II)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/a/a/b/e;->g:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/b/e;->g:[C

    invoke-direct {v0, v1, v3, p2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v0

    :cond_0
    new-array v1, p2, [C

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v0, p1, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private h([C)Z
    .locals 6

    const/4 v0, 0x0

    array-length v2, p1

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-le v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-char v3, p1, v1

    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v1, "true"

    iget v2, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/a/a/b/e;->a:I

    return-void

    :cond_1
    new-instance v0, Lcom/a/a/d;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z()V
    .locals 6

    const/16 v2, 0x9

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v4, "null"

    iget v5, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    move v0, v1

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    if-eq v3, v2, :cond_1

    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    if-ne v2, v1, :cond_3

    :cond_1
    iput v0, p0, Lcom/a/a/b/e;->a:I

    return-void

    :cond_2
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v4, "new"

    iget v5, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->e:I

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    const-string v1, "scan null/new error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a(I)C
    .locals 1

    iget v0, p0, Lcom/a/a/b/e;->p:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/a/a/b/e;->a:I

    return v0
.end method

.method public final a(Z)Ljava/lang/Number;
    .locals 3

    iget v0, p0, Lcom/a/a/b/e;->i:I

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/a/a/b/e;->x()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/a/a/b/o;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    :goto_0
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :cond_1
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v5, :cond_4

    iget v0, p0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->d:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/a/a/b/e;->a(Lcom/a/a/b/o;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    iput v3, p0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_5
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v1, 0x10

    iput v1, p0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_6
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_7

    const/16 v1, 0x14

    iput v1, p0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->c:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    new-instance v0, Lcom/a/a/d;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/a/a/b/e;->b(Lcom/a/a/b/o;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/a/a/b/o;C)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x5c

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int v1, v0, v1

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v2

    move v7, v1

    move v8, v0

    move v5, v4

    :goto_0
    if-lez v7, :cond_2

    add-int/lit8 v0, v7, -0x1

    aget-char v0, v2, v0

    if-ne v0, v10, :cond_2

    add-int/lit8 v0, v7, -0x2

    move v1, v3

    :goto_1
    if-ltz v0, :cond_1

    aget-char v6, v2, v0

    if-ne v6, v10, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_4

    :cond_2
    if-nez v5, :cond_9

    move v1, v4

    move v0, v5

    move v6, v4

    :goto_2
    if-ge v1, v7, :cond_6

    aget-char v9, v2, v1

    mul-int/lit8 v5, v6, 0x1f

    add-int/2addr v5, v9

    if-ne v9, v10, :cond_3

    move v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v0, v6, v8

    add-int v1, v7, v0

    array-length v0, v2

    if-lt v1, v0, :cond_b

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_5

    move v0, v1

    :cond_5
    new-array v0, v0, [C

    array-length v5, v2

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v8, v6, v0, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v2, v0

    move v7, v1

    move v8, v6

    move v5, v3

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {v2, v7}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v0

    :goto_4
    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_a

    const/16 v1, 0x1a

    :goto_5
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    return-object v0

    :cond_7
    const/16 v0, 0x14

    if-ge v7, v0, :cond_8

    invoke-virtual {p1, v2, v4, v7, v6}, Lcom/a/a/b/o;->a([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v4, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    :cond_9
    invoke-static {v2, v7}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_b
    move-object v0, v2

    goto :goto_3
.end method

.method public a([CLcom/a/a/b/o;)Ljava/lang/String;
    .locals 8

    const/16 v6, 0x22

    const/4 v0, 0x0

    const/16 v3, 0x1a

    const/4 v7, -0x1

    const/4 v4, 0x0

    iput v0, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    array-length v2, p1

    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v2, 0x1

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    if-eq v2, v6, :cond_2

    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v1, v5

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    iget v1, p0, Lcom/a/a/b/e;->e:I

    array-length v5, p1

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {p2, v6, v1, v5, v0}, Lcom/a/a/b/o;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v5, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v2, :cond_4

    move v0, v3

    :goto_1
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_5
    const/16 v2, 0x7d

    if-ne v0, v2, :cond_a

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_6

    const/16 v0, 0x10

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :goto_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_7

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_2

    :cond_7
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_8

    const/16 v0, 0xd

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_2

    :cond_8
    if-ne v0, v3, :cond_9

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_9
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v4

    goto/16 :goto_0

    :cond_a
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public final a(C)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/e;->h:I

    :goto_0
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    :goto_1
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    invoke-virtual {p0}, Lcom/a/a/b/e;->f()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/a/a/b/d;)Z
    .locals 2

    iget v0, p0, Lcom/a/a/b/e;->c:I

    iget v1, p1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([C)Z
    .locals 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/a/a/b/e;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_1

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget v2, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_2

    :goto_1
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xc

    iput v0, p0, Lcom/a/a/b/e;->a:I

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_4

    :goto_3
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xe

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/a/a/b/e;->f()V

    goto :goto_2
.end method

.method final a(II)[C
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int v1, p1, p2

    iget-object v2, p0, Lcom/a/a/b/e;->g:[C

    invoke-virtual {v0, p1, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/a/a/b/e;->g:[C

    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public b([C)I
    .locals 10

    const/16 v9, 0x22

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/16 v1, 0x1a

    const/4 v4, 0x0

    iput v4, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    if-ne v0, v9, :cond_13

    const/4 v3, 0x1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v0, v6

    iget v5, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_1
    move v5, v3

    :goto_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_7

    const/16 v3, 0x39

    if-gt v0, v3, :cond_7

    add-int/lit8 v0, v0, -0x30

    :goto_3
    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v6

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v6, 0x30

    if-lt v2, v6, :cond_2

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_3

    :cond_1
    iget-object v5, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_3

    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto :goto_0

    :cond_3
    if-ne v2, v9, :cond_5

    if-nez v5, :cond_4

    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_6

    move v2, v1

    :goto_4
    move v3, v5

    :cond_5
    if-gez v0, :cond_8

    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_4

    :cond_7
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto :goto_0

    :cond_8
    const/16 v5, 0x2c

    if-ne v2, v5, :cond_a

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_9

    :goto_5
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/a/a/b/e;->n:I

    iput v8, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_a
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_12

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_c

    iput v8, p0, Lcom/a/a/b/e;->a:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_b

    :goto_6
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    :goto_7
    const/4 v1, 0x4

    iput v1, p0, Lcom/a/a/b/e;->n:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    :cond_c
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_e

    const/16 v2, 0xf

    iput v2, p0, Lcom/a/a/b/e;->a:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_d

    :goto_8
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_7

    :cond_d
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    :cond_e
    const/16 v3, 0x7d

    if-ne v2, v3, :cond_10

    const/16 v2, 0xd

    iput v2, p0, Lcom/a/a/b/e;->a:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_f

    :goto_9
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    :cond_10
    if-ne v2, v1, :cond_11

    const/16 v2, 0x14

    iput v2, p0, Lcom/a/a/b/e;->a:I

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v5, -0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/b/e;->e:I

    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_7

    :cond_11
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto/16 :goto_0

    :cond_12
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move v0, v4

    goto/16 :goto_0

    :cond_13
    move v5, v4

    move v2, v6

    goto/16 :goto_2
.end method

.method public b(C)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/4 v3, 0x0

    const/4 v6, -0x1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v6, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/a/a/b/e;->x:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v6, :cond_5

    move v0, v1

    :goto_1
    add-int/lit8 v1, v0, -0x1

    move v2, v3

    :goto_2
    if-ltz v1, :cond_2

    iget-object v5, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    sub-int v2, v1, v4

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_2
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_3

    sub-int v1, v0, v4

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v2

    invoke-static {v2, v1}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v3, v0

    :goto_3
    add-int/lit8 v0, v3, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_4

    const/16 v0, 0x1a

    :goto_4
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_5
    move-object v2, v0

    move v3, v1

    goto :goto_3
.end method

.method public final b(Lcom/a/a/b/o;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    sget-object v3, Lcom/a/a/b/e;->v:[Z

    array-length v3, v3

    if-ge v1, v3, :cond_0

    sget-object v1, Lcom/a/a/b/e;->v:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal identifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/a/a/b/e;->e:I

    iput v1, p0, Lcom/a/a/b/e;->i:I

    iput v2, p0, Lcom/a/a/b/e;->h:I

    :goto_1
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    move-result v1

    sget-object v2, Lcom/a/a/b/e;->w:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_3

    sget-object v2, Lcom/a/a/b/e;->w:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    iget v1, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x12

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->h:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v2, "null"

    iget v3, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->h:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget v2, p0, Lcom/a/a/b/e;->i:I

    iget v3, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/a/a/b/o;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/a/a/b/e;->y:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/a/a/b/e;->g:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/e;->g:[C

    return-void
.end method

.method public final b(I)V
    .locals 7

    const/16 v6, 0x5b

    const/16 v5, 0xe

    const/16 v4, 0x7b

    const/16 v3, 0xc

    const/16 v0, 0x1a

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/b/e;->h:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-eq v1, v3, :cond_1

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :pswitch_1
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v4, :cond_3

    iput v3, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_2

    :goto_1
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_3
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v6, :cond_0

    iput v5, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_4

    :goto_3
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :pswitch_2
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_6

    const/16 v1, 0x10

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_5

    :goto_4
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_6
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_8

    const/16 v1, 0xd

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_7

    :goto_5
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_8
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_a

    const/16 v1, 0xf

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_9

    :goto_6
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_a
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_2

    :pswitch_3
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_b

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_b

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->b:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->s()V

    goto/16 :goto_2

    :cond_b
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_c

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->b:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->l()V

    goto/16 :goto_2

    :cond_c
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v6, :cond_d

    iput v5, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_2

    :cond_d
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v4, :cond_0

    iput v3, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_2

    :pswitch_4
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x22

    if-ne v1, v2, :cond_e

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->b:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->l()V

    goto/16 :goto_2

    :cond_e
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_f

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_f

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->b:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->s()V

    goto/16 :goto_2

    :cond_f
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v4, :cond_0

    iput v3, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_10

    :goto_7
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    :pswitch_5
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v6, :cond_11

    iput v5, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_2

    :cond_11
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v4, :cond_0

    iput v3, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_2

    :pswitch_6
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_12

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_2

    :cond_12
    :pswitch_7
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v0, :cond_0

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/a/a/b/e;->g()V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Lcom/a/a/b/e;->f()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public b(Z)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    sub-int v19, v2, v3

    if-nez p1, :cond_4

    const/16 v2, 0xd

    move/from16 v0, v19

    if-le v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v3, "/Date("

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int v2, v2, v19

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x6

    :goto_0
    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/2addr v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_1

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    const/16 v5, 0x39

    if-le v4, v5, :cond_0

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x6

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/a/a/b/e;->b(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/e;->k:Ljava/util/TimeZone;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/e;->l:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    const/16 v2, 0x11

    move/from16 v0, v19

    if-ne v0, v2, :cond_11

    :cond_5
    if-eqz p1, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/a/a/b/e;->a(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v7, v7, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->a(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v8, v8, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/a/a/b/e;->a(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v9, v9, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/a/a/b/e;->a(I)C

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/a/a/b/e;->a(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/a/a/b/e;->a(CCCCCCCC)V

    const/16 v2, 0x8

    move/from16 v0, v19

    if-eq v0, v2, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v5, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/a/a/b/e;->a(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v7, v7, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->a(I)C

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/a/a/b/e;->a(CCCCCC)Z

    move-result v8

    if-nez v8, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v8, 0x11

    move/from16 v0, v19

    if-ne v0, v8, :cond_f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v8, v8, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/a/a/b/e;->a(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v9, v9, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/a/a/b/e;->a(I)C

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/a/a/b/e;->a(I)C

    move-result v10

    const/16 v11, 0x30

    if-lt v8, v11, :cond_9

    const/16 v11, 0x39

    if-le v8, v11, :cond_a

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v11, 0x30

    if-lt v9, v11, :cond_b

    const/16 v11, 0x39

    if-le v9, v11, :cond_c

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v11, 0x30

    if-lt v10, v11, :cond_d

    const/16 v11, 0x39

    if-le v10, v11, :cond_e

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v8, v8, -0x30

    mul-int/lit8 v8, v8, 0x64

    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    add-int/lit8 v9, v10, -0x30

    add-int/2addr v8, v9

    :goto_2
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int v9, v2, v3

    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v5, -0x30

    add-int v4, v2, v3

    add-int/lit8 v2, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v7, -0x30

    add-int/2addr v2, v3

    move v3, v2

    move v5, v9

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    goto :goto_2

    :cond_10
    const/4 v2, 0x0

    move v8, v2

    move v3, v2

    move v4, v2

    move v5, v2

    goto :goto_3

    :cond_11
    const/16 v2, 0xa

    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_13

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_14

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/a/a/b/e;->a(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v7, v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->a(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v8, v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/a/a/b/e;->a(I)C

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v9, v9, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/a/a/b/e;->a(I)C

    move-result v9

    invoke-static/range {v2 .. v9}, Lcom/a/a/b/e;->a(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    invoke-direct/range {v10 .. v18}, Lcom/a/a/b/e;->a(CCCCCCCC)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_16

    const/16 v3, 0x20

    if-ne v2, v3, :cond_17

    if-nez p1, :cond_17

    :cond_16
    const/16 v2, 0x13

    move/from16 v0, v19

    if-ge v0, v2, :cond_1a

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0x22

    if-eq v2, v3, :cond_18

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/a/a/b/e;->d:C

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1b

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1c

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v5, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/a/a/b/e;->a(I)C

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v7, v7, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/a/a/b/e;->a(I)C

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/a/a/b/e;->a(CCCCCC)Z

    move-result v8

    if-nez v8, :cond_1d

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1d
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 v3, v4, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v5, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v7, -0x30

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1e

    const/16 v2, 0x17

    move/from16 v0, v19

    if-ge v0, v2, :cond_20

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x13

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/b/e;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/a/a/b/e;->d:C

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/a/a/b/e;->a:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_1f

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1f
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_21

    const/16 v3, 0x39

    if-le v2, v3, :cond_22

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_22
    sget-object v3, Lcom/a/a/b/e;->s:[I

    aget v3, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_23

    const/16 v5, 0x39

    if-gt v4, v5, :cond_23

    mul-int/lit8 v2, v3, 0xa

    sget-object v3, Lcom/a/a/b/e;->s:[I

    aget v3, v3, v4

    add-int/2addr v3, v2

    const/4 v2, 0x2

    :cond_23
    const/4 v4, 0x2

    if-ne v2, v4, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_24

    const/16 v5, 0x39

    if-gt v4, v5, :cond_24

    mul-int/lit8 v2, v3, 0xa

    sget-object v3, Lcom/a/a/b/e;->s:[I

    aget v3, v3, v4

    add-int/2addr v3, v2

    const/4 v2, 0x3

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x14

    add-int/2addr v4, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v5

    const/16 v4, 0x2b

    if-eq v5, v4, :cond_25

    const/16 v4, 0x2d

    if-ne v5, v4, :cond_31

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v3, 0x30

    if-lt v4, v3, :cond_26

    const/16 v3, 0x31

    if-le v4, v3, :cond_27

    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_27
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    const/16 v3, 0x30

    if-lt v6, v3, :cond_28

    const/16 v3, 0x39

    if-le v6, v3, :cond_29

    :cond_28
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    const/16 v7, 0x3a

    if-ne v3, v7, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_2a

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_2b

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2b
    const/4 v3, 0x6

    :goto_4
    sget-object v7, Lcom/a/a/b/e;->s:[I

    aget v4, v7, v4

    mul-int/lit8 v4, v4, 0xa

    sget-object v7, Lcom/a/a/b/e;->s:[I

    aget v6, v7, v6

    add-int/2addr v4, v6

    mul-int/lit16 v4, v4, 0xe10

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_2c

    neg-int v4, v4

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    if-eq v5, v4, :cond_2d

    invoke-static {v4}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_2d

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2d
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v2, 0x14

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_32

    const/16 v5, 0x22

    if-eq v4, v5, :cond_32

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2e
    const/16 v7, 0x30

    if-ne v3, v7, :cond_30

    move-object/from16 v0, p0

    iget v3, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    const/16 v7, 0x30

    if-eq v3, v7, :cond_2f

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_2f
    const/4 v3, 0x5

    goto :goto_4

    :cond_30
    const/4 v3, 0x3

    goto :goto_4

    :cond_31
    const/16 v4, 0x5a

    if-ne v5, v4, :cond_2d

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_2d

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_5

    :cond_32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->e:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lcom/a/a/b/e;->d:C

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/a/b/e;->a:I

    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public c()C
    .locals 2

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    :goto_0
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    return v0

    :cond_0
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public c([C)J
    .locals 12

    const/16 v11, 0x10

    const/4 v0, 0x0

    const/4 v10, -0x1

    const-wide/16 v6, 0x0

    const/16 v1, 0x1a

    iput v0, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    :goto_0
    return-wide v2

    :cond_0
    array-length v2, p1

    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v8, v2, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v2, v3, :cond_1

    move v2, v1

    :goto_1
    const/16 v3, 0x22

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v8, 0x1

    add-int/2addr v0, v8

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    move v5, v2

    move v3, v0

    :goto_3
    const/16 v0, 0x30

    if-lt v3, v0, :cond_9

    const/16 v0, 0x39

    if-gt v3, v0, :cond_9

    add-int/lit8 v0, v3, -0x30

    int-to-long v2, v0

    move v0, v4

    :goto_4
    iget v8, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v0, v8

    iget v8, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v8, :cond_3

    move v0, v1

    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_4

    const/16 v8, 0x39

    if-gt v0, v8, :cond_4

    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    add-int/lit8 v0, v0, -0x30

    int-to-long v8, v0

    add-long/2addr v2, v8

    move v0, v4

    goto :goto_4

    :cond_1
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_5

    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto :goto_0

    :cond_5
    const/16 v8, 0x22

    if-ne v0, v8, :cond_7

    if-nez v5, :cond_6

    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v0, v4

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v4, :cond_8

    move v0, v1

    :goto_6
    move v4, v5

    :cond_7
    cmp-long v5, v2, v6

    if-gez v5, :cond_a

    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_9
    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0x2c

    if-ne v0, v5, :cond_c

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v4, :cond_b

    :goto_7
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->n:I

    iput v11, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_14

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_e

    iput v11, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v4, :cond_d

    :goto_8
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    :goto_9
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->n:I

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    :cond_e
    const/16 v4, 0x5d

    if-ne v0, v4, :cond_10

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v4, :cond_f

    :goto_a
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_9

    :cond_f
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_a

    :cond_10
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_12

    const/16 v0, 0xd

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v4, :cond_11

    :goto_b
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_9

    :cond_11
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_12
    if-ne v0, v1, :cond_13

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v5, -0x1

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_9

    :cond_13
    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto/16 :goto_0

    :cond_14
    iput v10, p0, Lcom/a/a/b/e;->n:I

    move-wide v2, v6

    goto/16 :goto_0

    :cond_15
    move v5, v0

    move v3, v2

    move v4, v8

    goto/16 :goto_3
.end method

.method public d([C)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x5c

    const/16 v10, 0x22

    const/16 v4, 0x1a

    const/4 v3, 0x0

    const/4 v9, -0x1

    iput v3, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    iget-object v2, p0, Lcom/a/a/b/e;->q:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    array-length v0, p1

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v7, v0, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_2

    iput v9, p0, Lcom/a/a/b/e;->n:I

    iget-object v2, p0, Lcom/a/a/b/e;->q:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int v8, v0, v7

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v9, :cond_3

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-boolean v0, Lcom/a/a/b/e;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v9, :cond_11

    move v0, v1

    move v2, v3

    :goto_2
    add-int/lit8 v5, v0, -0x1

    move v6, v3

    move v1, v2

    :goto_3
    if-ltz v5, :cond_5

    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v11, :cond_5

    const/4 v1, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_3

    :cond_4
    sub-int v2, v1, v8

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v0, v7

    invoke-virtual {p0, v0, v2}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_5
    rem-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_6

    sub-int v2, v0, v8

    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v5, v7

    invoke-virtual {p0, v5, v2}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v5

    if-eqz v1, :cond_7

    invoke-static {v5, v2}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v3, v0

    :goto_4
    add-int/lit8 v1, v3, 0x1

    iget v0, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v0, :cond_8

    move v0, v4

    :goto_5
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_a

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_9

    move v0, v4

    :goto_6
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->n:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v2, v1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v9, :cond_10

    invoke-static {v5, v2}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v3, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_a
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_f

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_b

    const/16 v1, 0x10

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :goto_7
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->n:I

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_c

    const/16 v1, 0xf

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_7

    :cond_c
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_d

    const/16 v1, 0xd

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_7

    :cond_d
    if-ne v1, v4, :cond_e

    const/16 v1, 0x14

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iput-char v4, p0, Lcom/a/a/b/e;->d:C

    goto :goto_7

    :cond_e
    iput v9, p0, Lcom/a/a/b/e;->n:I

    iget-object v2, p0, Lcom/a/a/b/e;->q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    iput v9, p0, Lcom/a/a/b/e;->n:I

    iget-object v2, p0, Lcom/a/a/b/e;->q:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    move-object v2, v1

    move v3, v0

    goto/16 :goto_4

    :cond_11
    move-object v2, v0

    move v3, v1

    goto/16 :goto_4
.end method

.method public final d()Z
    .locals 3

    iget v0, p0, Lcom/a/a/b/e;->h:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v1, "$ref"

    iget v2, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/a/a/b/e;->i:I

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget v0, p0, Lcom/a/a/b/e;->h:I

    const/16 v2, 0x4c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/16 v2, 0x46

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget v1, p0, Lcom/a/a/b/e;->i:I

    invoke-direct {p0, v1, v0}, Lcom/a/a/b/e;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e([C)Z
    .locals 9

    const/16 v8, 0x10

    const/4 v0, 0x1

    const/4 v7, -0x1

    const/16 v3, 0x1a

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    :goto_0
    return v1

    :cond_0
    array-length v2, p1

    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v5, "false"

    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x5

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_6

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v5, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_5

    move v1, v3

    :goto_2
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    const/4 v1, 0x3

    iput v1, p0, Lcom/a/a/b/e;->n:I

    iput v8, p0, Lcom/a/a/b/e;->a:I

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v5, "true"

    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v5, "\"false\""

    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x7

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v5, "\"true\""

    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x6

    goto :goto_1

    :cond_4
    iput v7, p0, Lcom/a/a/b/e;->n:I

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_6
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_e

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v5, 0x2c

    if-ne v2, v5, :cond_8

    iput v8, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_7

    :goto_3
    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    :goto_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/a/a/b/e;->n:I

    move v1, v0

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_8
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_a

    const/16 v1, 0xf

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_9

    :goto_5
    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_a
    const/16 v5, 0x7d

    if-ne v2, v5, :cond_c

    const/16 v1, 0xd

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_b

    :goto_6
    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :cond_c
    if-ne v2, v3, :cond_d

    const/16 v1, 0x14

    iput v1, p0, Lcom/a/a/b/e;->a:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v4, -0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_d
    iput v7, p0, Lcom/a/a/b/e;->n:I

    goto/16 :goto_0

    :cond_e
    iput v7, p0, Lcom/a/a/b/e;->n:I

    goto/16 :goto_0
.end method

.method public final f([C)F
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x39

    const/16 v4, 0x30

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    if-lt v1, v4, :cond_4

    if-gt v1, v6, :cond_4

    :goto_1
    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    if-lt v0, v4, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_3

    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    if-lt v1, v4, :cond_2

    if-gt v1, v6, :cond_2

    :goto_2
    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    if-lt v0, v4, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    goto :goto_2

    :cond_2
    iput v5, p0, Lcom/a/a/b/e;->n:I

    move v0, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/a/a/b/e;->e:I

    array-length v4, p1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/a/a/b/e;->b(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/16 v4, 0x2c

    if-ne v0, v4, :cond_5

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->n:I

    iput v7, p0, Lcom/a/a/b/e;->a:I

    move v0, v3

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/a/a/b/e;->n:I

    move v0, v2

    goto :goto_0

    :cond_5
    const/16 v4, 0x7d

    if-ne v0, v4, :cond_a

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_6

    iput v7, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :goto_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move v0, v3

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_7

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_3

    :cond_7
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_8

    const/16 v0, 0xd

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_3

    :cond_8
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v4, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_3

    :cond_9
    iput v5, p0, Lcom/a/a/b/e;->n:I

    move v0, v2

    goto/16 :goto_0

    :cond_a
    iput v5, p0, Lcom/a/a/b/e;->n:I

    move v0, v2

    goto/16 :goto_0
.end method

.method public final f()V
    .locals 6

    const/16 v5, 0x14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1a

    iput v2, p0, Lcom/a/a/b/e;->h:I

    :goto_0
    iget v1, p0, Lcom/a/a/b/e;->e:I

    iput v1, p0, Lcom/a/a/b/e;->b:I

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x2f

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/e;->k()V

    goto :goto_0

    :cond_0
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x22

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/a/a/b/e;->l()V

    :goto_1
    return-void

    :cond_1
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x30

    if-lt v1, v4, :cond_2

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x39

    if-le v1, v4, :cond_3

    :cond_2
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/b/e;->s()V

    goto :goto_1

    :cond_4
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v0, 0x10

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :cond_5
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    sparse-switch v1, :sswitch_data_0

    iget v1, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-eq v1, v4, :cond_6

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    if-ne v1, v0, :cond_b

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-ne v1, v4, :cond_b

    :cond_6
    move v1, v3

    :goto_2
    if-eqz v1, :cond_d

    iget v0, p0, Lcom/a/a/b/e;->a:I

    if-ne v0, v5, :cond_c

    new-instance v0, Lcom/a/a/d;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p0, Lcom/a/a/b/e;->c:I

    sget-object v1, Lcom/a/a/b/d;->d:Lcom/a/a/b/d;

    iget v1, v1, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v1

    if-nez v0, :cond_7

    new-instance v0, Lcom/a/a/d;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/a/a/b/e;->l()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/a/a/b/e;->y()V

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/a/a/b/e;->B()V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/a/a/b/e;->A()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/a/a/b/e;->z()V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v0, 0xa

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v0, 0xb

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :sswitch_8
    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_8

    :goto_3
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xe

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :sswitch_9
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :sswitch_a
    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_9

    :goto_4
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xc

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :sswitch_b
    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v2, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v2, :cond_a

    :goto_5
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v0, 0xd

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :sswitch_c
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/16 v0, 0x11

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_1

    :cond_b
    move v1, v2

    goto/16 :goto_2

    :cond_c
    iput v5, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->f:I

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->b:I

    goto/16 :goto_1

    :cond_d
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x1f

    if-le v1, v4, :cond_e

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x7f

    if-ne v1, v4, :cond_f

    :cond_e
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_0

    :cond_f
    iput v3, p0, Lcom/a/a/b/e;->a:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final g([C)D
    .locals 9

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/16 v6, 0x39

    const/16 v5, 0x30

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/e;->n:I

    invoke-direct {p0, p1}, Lcom/a/a/b/e;->h([C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    array-length v1, p1

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    if-lt v1, v5, :cond_7

    if-gt v1, v6, :cond_7

    :goto_1
    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    if-lt v0, v5, :cond_1

    if-gt v0, v6, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v1, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    if-lt v1, v5, :cond_2

    if-gt v1, v6, :cond_2

    :goto_2
    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    if-lt v0, v5, :cond_3

    if-gt v0, v6, :cond_3

    move v0, v1

    goto :goto_2

    :cond_2
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v2

    goto :goto_0

    :cond_3
    const/16 v4, 0x65

    if-eq v0, v4, :cond_4

    const/16 v4, 0x45

    if-ne v0, v4, :cond_6

    :cond_4
    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e

    :cond_5
    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    :goto_3
    if-lt v0, v5, :cond_6

    if-gt v0, v6, :cond_6

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    move v1, v4

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/a/a/b/e;->e:I

    array-length v5, p1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/a/a/b/e;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_8

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->n:I

    iput v8, p0, Lcom/a/a/b/e;->a:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_7
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_d

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_9

    iput v8, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :goto_4
    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v4

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    const/16 v0, 0xf

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_4

    :cond_a
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_b

    const/16 v0, 0xd

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_4

    :cond_b
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_c

    const/16 v0, 0x14

    iput v0, p0, Lcom/a/a/b/e;->a:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v6, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    const/16 v0, 0x1a

    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_c
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_d
    iput v7, p0, Lcom/a/a/b/e;->n:I

    move-wide v0, v2

    goto/16 :goto_0

    :cond_e
    move v1, v4

    goto/16 :goto_3
.end method

.method public final g()V
    .locals 3

    const/16 v2, 0x20

    :goto_0
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-eq v0, v2, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/a/a/b/e;->B()V

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/b/e;->f()V

    goto :goto_2
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/a/a/b/e;->a:I

    invoke-static {v0}, Lcom/a/a/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/Number;
    .locals 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/a/a/b/e;->i:I

    iget v0, p0, Lcom/a/a/b/e;->i:I

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/2addr v1, v0

    const/16 v0, 0x20

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_0
    iget v6, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0, v6}, Lcom/a/a/b/e;->a(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    add-int/lit8 v3, v3, 0x1

    move v8, v2

    :goto_1
    if-ge v3, v1, :cond_c

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    neg-int v3, v3

    int-to-long v4, v3

    :goto_2
    if-ge v2, v1, :cond_3

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    const-wide v10, -0xcccccccccccccccL

    cmp-long v9, v4, v10

    if-gez v9, :cond_1

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_3
    return-object v0

    :sswitch_0
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x4c

    goto :goto_0

    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x53

    goto :goto_0

    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    const/16 v0, 0x42

    goto :goto_0

    :cond_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v8, v2

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0xa

    mul-long/2addr v4, v10

    int-to-long v10, v2

    add-long/2addr v10, v6

    cmp-long v9, v4, v10

    if-gez v9, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    int-to-long v10, v2

    sub-long/2addr v4, v10

    move v2, v3

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_8

    iget v1, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_7

    const-wide/32 v2, -0x80000000

    cmp-long v1, v4, v2

    if-ltz v1, :cond_6

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x53

    if-ne v0, v1, :cond_4

    long-to-int v0, v4

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/16 v1, 0x42

    if-ne v0, v1, :cond_5

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_3

    :cond_5
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    neg-long v2, v4

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_b

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_b

    const/16 v1, 0x53

    if-ne v0, v1, :cond_9

    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0x42

    if-ne v0, v1, :cond_a

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_3

    :cond_a
    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_3

    :cond_c
    move v2, v3

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public j()Ljava/lang/String;
    .locals 4

    const/high16 v3, 0x10000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected k()V
    .locals 4

    const/16 v3, 0x2f

    const/16 v2, 0x2a

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/a/a/d;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 11

    const/16 v10, 0x5c

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-char v9, p0, Lcom/a/a/b/e;->d:C

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int v1, v0, v1

    iget v2, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/a/a/b/e;->a(II)[C

    move-result-object v2

    move v6, v1

    move v7, v0

    move v4, v5

    :goto_0
    if-lez v6, :cond_2

    add-int/lit8 v0, v6, -0x1

    aget-char v0, v2, v0

    if-ne v0, v10, :cond_2

    add-int/lit8 v0, v6, -0x2

    move v1, v3

    :goto_1
    if-ltz v0, :cond_1

    aget-char v8, v2, v0

    if-ne v8, v10, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_4

    :cond_2
    if-nez v4, :cond_6

    move v1, v5

    move v0, v4

    :goto_2
    if-ge v1, v6, :cond_7

    aget-char v4, v2, v1

    if-ne v4, v10, :cond_3

    move v0, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    sub-int v0, v8, v7

    add-int v1, v6, v0

    array-length v0, v2

    if-lt v1, v0, :cond_9

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_5

    move v0, v1

    :cond_5
    new-array v0, v0, [C

    array-length v4, v2

    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    move-object v2, v0

    move v6, v1

    move v7, v8

    move v4, v3

    goto :goto_0

    :cond_6
    move v0, v4

    :cond_7
    iput-object v2, p0, Lcom/a/a/b/e;->g:[C

    iput v6, p0, Lcom/a/a/b/e;->h:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    iput v1, p0, Lcom/a/a/b/e;->i:I

    iput-boolean v0, p0, Lcom/a/a/b/e;->j:Z

    add-int/lit8 v0, v7, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_8

    const/16 v0, 0x1a

    :goto_4
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    const/4 v0, 0x4

    iput v0, p0, Lcom/a/a/b/e;->a:I

    return-void

    :cond_8
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_9
    move-object v0, v2

    goto :goto_3
.end method

.method public m()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/e;->m:Ljava/util/Calendar;

    return-object v0
.end method

.method public final n()I
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/b/e;->i:I

    iget v2, p0, Lcom/a/a/b/e;->i:I

    iget v3, p0, Lcom/a/a/b/e;->h:I

    add-int v5, v2, v3

    iget v2, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    const/4 v4, 0x1

    const/high16 v2, -0x80000000

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    :goto_0
    if-ge v1, v5, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    :goto_1
    if-ge v2, v5, :cond_7

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v2

    const/16 v6, 0x4c

    if-eq v2, v6, :cond_0

    const/16 v6, 0x53

    if-eq v2, v6, :cond_0

    const/16 v6, 0x42

    if-ne v2, v6, :cond_2

    :cond_0
    :goto_2
    if-eqz v4, :cond_6

    iget v2, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_5

    :goto_3
    return v0

    :cond_1
    const v2, -0x7fffffff

    move v3, v2

    move v4, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, -0x30

    const v6, -0xccccccc

    if-ge v0, v6, :cond_3

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    mul-int/lit8 v0, v0, 0xa

    add-int v6, v3, v2

    if-ge v0, v6, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sub-int/2addr v0, v2

    move v2, v1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    neg-int v0, v0

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_1
.end method

.method public o()[B
    .locals 3

    iget-object v0, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget v1, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/a/a/b/e;->h:I

    invoke-static {v0, v1, v2}, Lcom/a/a/b/e;->a(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/a/a/b/e;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/e;->g:[C

    iget v1, p0, Lcom/a/a/b/e;->h:I

    invoke-static {v0, v1}, Lcom/a/a/b/e;->a([CI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/a/a/b/e;->h:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/b/e;->b(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Z
    .locals 6

    const/16 v5, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)C

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-gt v3, v5, :cond_3

    if-eq v3, v5, :cond_2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method final r()V
    .locals 3

    const/16 v2, 0x2f

    :goto_0
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/a/a/b/e;->k()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final s()V
    .locals 8

    const/16 v7, 0x2d

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v2, 0x1

    const/16 v1, 0x1a

    iget v0, p0, Lcom/a/a/b/e;->e:I

    iput v0, p0, Lcom/a/a/b/e;->i:I

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v7, :cond_0

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    :cond_0
    :goto_1
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-lt v0, v5, :cond_3

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-gt v0, v6, :cond_3

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_7

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_3
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    :goto_4
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-lt v0, v5, :cond_6

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-gt v0, v6, :cond_6

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_5
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_6
    move v0, v2

    :cond_7
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_9

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :cond_8
    :goto_6
    if-eqz v0, :cond_17

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/b/e;->a:I

    :goto_7
    return-void

    :cond_9
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x53

    if-ne v3, v4, :cond_a

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_6

    :cond_a
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x42

    if-ne v3, v4, :cond_b

    iget v1, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    goto :goto_6

    :cond_b
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x46

    if-ne v3, v4, :cond_c

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    move v0, v2

    goto :goto_6

    :cond_c
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x44

    if-ne v3, v4, :cond_d

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    move v0, v2

    goto :goto_6

    :cond_d
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x65

    if-eq v3, v4, :cond_e

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v4, 0x45

    if-ne v3, v4, :cond_8

    :cond_e
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_11

    move v0, v1

    :goto_8
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_f

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-ne v0, v7, :cond_10

    :cond_f
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_12

    move v0, v1

    :goto_9
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    :cond_10
    :goto_a
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-lt v0, v5, :cond_14

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    if-gt v0, v6, :cond_14

    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v3, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v3, :cond_13

    move v0, v1

    :goto_b
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    goto :goto_a

    :cond_11
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_12
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    :cond_13
    iget-object v3, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_b

    :cond_14
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x44

    if-eq v0, v1, :cond_15

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_16

    :cond_15
    iget v0, p0, Lcom/a/a/b/e;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->h:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :cond_16
    move v0, v2

    goto/16 :goto_6

    :cond_17
    const/4 v0, 0x2

    iput v0, p0, Lcom/a/a/b/e;->a:I

    goto/16 :goto_7
.end method

.method public t()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v3, "false"

    iget v4, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    move v2, v1

    :goto_0
    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->a(I)C

    move-result v1

    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    const-string v3, "true"

    iget v4, p0, Lcom/a/a/b/e;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    move v0, v1

    goto :goto_0

    :cond_1
    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-char v2, p0, Lcom/a/a/b/e;->d:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/a/a/b/e;->n:I

    goto :goto_1
.end method

.method public final u()Ljava/lang/Number;
    .locals 12

    iget v8, p0, Lcom/a/a/b/e;->e:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/b/e;->i:I

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    iget v0, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->e:I

    iget v1, p0, Lcom/a/a/b/e;->p:I

    if-lt v0, v1, :cond_2

    const/16 v0, 0x1a

    :goto_0
    iput-char v0, p0, Lcom/a/a/b/e;->d:C

    move-wide v0, v2

    :goto_1
    const-wide/16 v2, 0x0

    :goto_2
    iget-char v6, p0, Lcom/a/a/b/e;->d:C

    const/16 v9, 0x30

    if-lt v6, v9, :cond_5

    iget-char v6, p0, Lcom/a/a/b/e;->d:C

    const/16 v9, 0x39

    if-gt v6, v9, :cond_5

    iget-char v6, p0, Lcom/a/a/b/e;->d:C

    add-int/lit8 v6, v6, -0x30

    const-wide v10, -0xcccccccccccccccL

    cmp-long v9, v2, v10

    if-gez v9, :cond_0

    const/4 v5, 0x1

    :cond_0
    const-wide/16 v10, 0xa

    mul-long/2addr v2, v10

    int-to-long v10, v6

    add-long/2addr v10, v0

    cmp-long v9, v2, v10

    if-gez v9, :cond_1

    const/4 v5, 0x1

    :cond_1
    int-to-long v10, v6

    sub-long/2addr v2, v10

    iget v6, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/a/a/b/e;->i:I

    iget v6, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/a/a/b/e;->e:I

    iget v9, p0, Lcom/a/a/b/e;->p:I

    if-lt v6, v9, :cond_4

    const/16 v6, 0x1a

    :goto_3
    iput-char v6, p0, Lcom/a/a/b/e;->d:C

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    move v4, v2

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_3

    :cond_5
    if-nez v4, :cond_6

    neg-long v2, v2

    :cond_6
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4
    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_e

    const/4 v4, 0x1

    iget v1, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->i:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v6, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v6, :cond_b

    const/16 v1, 0x1a

    :goto_5
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    :goto_6
    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v6, 0x30

    if-lt v1, v6, :cond_d

    iget-char v1, p0, Lcom/a/a/b/e;->d:C

    const/16 v6, 0x39

    if-gt v1, v6, :cond_d

    iget v1, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->i:I

    iget v1, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/a/a/b/e;->e:I

    iget v6, p0, Lcom/a/a/b/e;->p:I

    if-lt v1, v6, :cond_c

    const/16 v1, 0x1a

    :goto_7
    iput-char v1, p0, Lcom/a/a/b/e;->d:C

    goto :goto_6

    :cond_7
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    long-to-int v0, v2

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_4

    :cond_8
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_4

    :cond_9
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    long-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    long-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_4

    :cond_b
    iget-object v6, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :cond_d
    move v1, v4

    :cond_e
    const/4 v6, 0x0

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v9, 0x65

    if-eq v4, v9, :cond_f

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v9, 0x45

    if-ne v4, v9, :cond_17

    :cond_f
    iget v4, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->i:I

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->e:I

    iget v7, p0, Lcom/a/a/b/e;->p:I

    if-lt v4, v7, :cond_12

    const/16 v4, 0x1a

    :goto_8
    iput-char v4, p0, Lcom/a/a/b/e;->d:C

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_10

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x2d

    if-ne v4, v7, :cond_11

    :cond_10
    iget v4, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->i:I

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->e:I

    iget v7, p0, Lcom/a/a/b/e;->p:I

    if-lt v4, v7, :cond_13

    const/16 v4, 0x1a

    :goto_9
    iput-char v4, p0, Lcom/a/a/b/e;->d:C

    :cond_11
    :goto_a
    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x30

    if-lt v4, v7, :cond_15

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x39

    if-gt v4, v7, :cond_15

    iget v4, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->i:I

    iget v4, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->e:I

    iget v7, p0, Lcom/a/a/b/e;->p:I

    if-lt v4, v7, :cond_14

    const/16 v4, 0x1a

    :goto_b
    iput-char v4, p0, Lcom/a/a/b/e;->d:C

    goto :goto_a

    :cond_12
    iget-object v7, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_8

    :cond_13
    iget-object v7, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_9

    :cond_14
    iget-object v7, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_b

    :cond_15
    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x44

    if-eq v4, v7, :cond_16

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    const/16 v7, 0x46

    if-ne v4, v7, :cond_1f

    :cond_16
    iget v4, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/a/a/b/e;->i:I

    iget-char v4, p0, Lcom/a/a/b/e;->d:C

    invoke-virtual {p0}, Lcom/a/a/b/e;->c()C

    :goto_c
    const/4 v7, 0x1

    move v6, v4

    :cond_17
    if-nez v1, :cond_1b

    if-nez v7, :cond_1b

    if-eqz v5, :cond_18

    iget v0, p0, Lcom/a/a/b/e;->e:I

    sub-int/2addr v0, v8

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    iget v4, p0, Lcom/a/a/b/e;->e:I

    const/4 v5, 0x0

    invoke-virtual {v1, v8, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_18
    if-nez v0, :cond_19

    const-wide/32 v0, -0x80000000

    cmp-long v0, v2, v0

    if-lez v0, :cond_1a

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v2, v0

    if-gez v0, :cond_1a

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_19
    :goto_d
    return-object v0

    :cond_1a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_d

    :cond_1b
    iget v0, p0, Lcom/a/a/b/e;->e:I

    sub-int/2addr v0, v8

    if-eqz v6, :cond_1c

    add-int/lit8 v0, v0, -0x1

    :cond_1c
    new-array v1, v0, [C

    iget-object v2, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    add-int/2addr v0, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    if-nez v7, :cond_1d

    iget v0, p0, Lcom/a/a/b/e;->c:I

    sget-object v2, Lcom/a/a/b/d;->h:Lcom/a/a/b/d;

    iget v2, v2, Lcom/a/a/b/d;->q:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v1, 0x46

    if-ne v6, v1, :cond_1e

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_d

    :cond_1e
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_d

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1f
    move v4, v6

    goto/16 :goto_c

    :cond_20
    move-object v0, v7

    goto/16 :goto_4
.end method

.method public final v()J
    .locals 8

    const/4 v2, 0x0

    iput v2, p0, Lcom/a/a/b/e;->i:I

    iget-char v0, p0, Lcom/a/a/b/e;->d:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    const-wide/high16 v0, -0x8000000000000000L

    iget v3, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/a/a/b/e;->i:I

    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/a/a/b/e;->e:I

    iget v4, p0, Lcom/a/a/b/e;->p:I

    if-lt v3, v4, :cond_0

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v4, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    :goto_0
    const-wide/16 v4, 0x0

    :goto_1
    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v6, 0x30

    if-lt v3, v6, :cond_5

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    const/16 v6, 0x39

    if-gt v3, v6, :cond_5

    iget-char v3, p0, Lcom/a/a/b/e;->d:C

    add-int/lit8 v3, v3, -0x30

    const-wide v6, -0xcccccccccccccccL

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error long value, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v6, v0

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    new-instance v0, Lcom/a/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error long value, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/b/e;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    int-to-long v6, v3

    sub-long/2addr v4, v6

    iget v3, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/a/a/b/e;->i:I

    iget v3, p0, Lcom/a/a/b/e;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/a/a/b/e;->e:I

    iget v6, p0, Lcom/a/a/b/e;->p:I

    if-lt v3, v6, :cond_4

    const/16 v3, 0x1a

    :goto_2
    iput-char v3, p0, Lcom/a/a/b/e;->d:C

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    neg-long v4, v4

    :cond_6
    return-wide v4
.end method

.method public final w()J
    .locals 10

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    iget v2, p0, Lcom/a/a/b/e;->i:I

    iget v4, p0, Lcom/a/a/b/e;->i:I

    iget v5, p0, Lcom/a/a/b/e;->h:I

    add-int v7, v4, v5

    iget v4, p0, Lcom/a/a/b/e;->i:I

    invoke-virtual {p0, v4}, Lcom/a/a/b/e;->a(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v2, v2, 0x1

    move v6, v3

    :goto_0
    if-ge v2, v7, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->a(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v0, v0

    :goto_1
    if-ge v3, v7, :cond_8

    add-int/lit8 v2, v3, 0x1

    iget v8, p0, Lcom/a/a/b/e;->p:I

    if-lt v3, v8, :cond_2

    const/16 v3, 0x1a

    :goto_2
    const/16 v8, 0x4c

    if-eq v3, v8, :cond_0

    const/16 v8, 0x53

    if-eq v3, v8, :cond_0

    const/16 v8, 0x42

    if-ne v3, v8, :cond_3

    :cond_0
    :goto_3
    if-eqz v6, :cond_7

    iget v3, p0, Lcom/a/a/b/e;->i:I

    add-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_6

    :goto_4
    return-wide v0

    :cond_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move v6, v3

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/a/a/b/e;->o:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x30

    const-wide v8, -0xcccccccccccccccL

    cmp-long v8, v0, v8

    if-gez v8, :cond_4

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v8, 0xa

    mul-long/2addr v0, v8

    int-to-long v8, v3

    add-long/2addr v8, v4

    cmp-long v8, v0, v8

    if-gez v8, :cond_5

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    int-to-long v8, v3

    sub-long/2addr v0, v8

    move v3, v2

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    neg-long v0, v0

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move v3, v2

    goto :goto_1
.end method

.method public final x()Ljava/math/BigDecimal;
    .locals 2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
