.class public Lcom/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static volatile a:Lcom/b/a/c;

.field private static volatile b:Z


# instance fields
.field private final c:Lcom/b/a/c/b/j;

.field private final d:Lcom/b/a/c/b/a/e;

.field private final e:Lcom/b/a/c/b/b/h;

.field private final f:Lcom/b/a/c/b/d/a;

.field private final g:Lcom/b/a/e;

.field private final h:Lcom/b/a/h;

.field private final i:Lcom/b/a/c/b/a/b;

.field private final j:Lcom/b/a/d/l;

.field private final k:Lcom/b/a/d/d;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/b/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/b/a/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/b/a/c/b/j;Lcom/b/a/c/b/b/h;Lcom/b/a/c/b/a/e;Lcom/b/a/c/b/a/b;Lcom/b/a/d/l;Lcom/b/a/d/d;ILcom/b/a/g/e;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/b/a/c/b/j;",
            "Lcom/b/a/c/b/b/h;",
            "Lcom/b/a/c/b/a/e;",
            "Lcom/b/a/c/b/a/b;",
            "Lcom/b/a/d/l;",
            "Lcom/b/a/d/d;",
            "I",
            "Lcom/b/a/g/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/b/a/k",
            "<**>;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/b/a/c;->l:Ljava/util/List;

    sget-object v4, Lcom/b/a/f;->b:Lcom/b/a/f;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/b/a/c;->m:Lcom/b/a/f;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->c:Lcom/b/a/c/b/j;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->d:Lcom/b/a/c/b/a/e;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->i:Lcom/b/a/c/b/a/b;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->e:Lcom/b/a/c/b/b/h;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->j:Lcom/b/a/d/l;

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/b/a/c;->k:Lcom/b/a/d/d;

    invoke-virtual/range {p9 .. p9}, Lcom/b/a/g/e;->k()Lcom/b/a/c/j;

    move-result-object v4

    sget-object v5, Lcom/b/a/c/d/a/k;->a:Lcom/b/a/c/i;

    invoke-virtual {v4, v5}, Lcom/b/a/c/j;->a(Lcom/b/a/c/i;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/b/a/c/b;

    new-instance v5, Lcom/b/a/c/b/d/a;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1, v4}, Lcom/b/a/c/b/d/a;-><init>(Lcom/b/a/c/b/b/h;Lcom/b/a/c/b/a/e;Lcom/b/a/c/b;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/b/a/c;->f:Lcom/b/a/c/b/d/a;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Lcom/b/a/h;

    invoke-direct {v5}, Lcom/b/a/h;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1b

    if-lt v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    new-instance v6, Lcom/b/a/c/d/a/n;

    invoke-direct {v6}, Lcom/b/a/c/d/a/n;-><init>()V

    invoke-virtual {v5, v6}, Lcom/b/a/h;->a(Lcom/b/a/c/f;)Lcom/b/a/h;

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    new-instance v6, Lcom/b/a/c/d/a/i;

    invoke-direct {v6}, Lcom/b/a/c/d/a/i;-><init>()V

    invoke-virtual {v5, v6}, Lcom/b/a/h;->a(Lcom/b/a/c/f;)Lcom/b/a/h;

    new-instance v5, Lcom/b/a/c/d/a/k;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    invoke-virtual {v6}, Lcom/b/a/h;->a()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/b/a/c/d/a/k;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/b/a/c/b/a/e;Lcom/b/a/c/b/a/b;)V

    new-instance v6, Lcom/b/a/c/d/e/a;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    invoke-virtual {v7}, Lcom/b/a/h;->a()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v6, v0, v7, v1, v2}, Lcom/b/a/c/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/b/a/c/b/a/e;Lcom/b/a/c/b/a/b;)V

    invoke-static/range {p4 .. p4}, Lcom/b/a/c/d/a/w;->b(Lcom/b/a/c/b/a/e;)Lcom/b/a/c/k;

    move-result-object v7

    new-instance v8, Lcom/b/a/c/d/a/f;

    invoke-direct {v8, v5}, Lcom/b/a/c/d/a/f;-><init>(Lcom/b/a/c/d/a/k;)V

    new-instance v9, Lcom/b/a/c/d/a/t;

    move-object/from16 v0, p5

    invoke-direct {v9, v5, v0}, Lcom/b/a/c/d/a/t;-><init>(Lcom/b/a/c/d/a/k;Lcom/b/a/c/b/a/b;)V

    new-instance v5, Lcom/b/a/c/d/c/d;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/b/a/c/d/c/d;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/b/a/c/c/s$c;

    invoke-direct {v10, v4}, Lcom/b/a/c/c/s$c;-><init>(Landroid/content/res/Resources;)V

    new-instance v11, Lcom/b/a/c/c/s$d;

    invoke-direct {v11, v4}, Lcom/b/a/c/c/s$d;-><init>(Landroid/content/res/Resources;)V

    new-instance v12, Lcom/b/a/c/c/s$b;

    invoke-direct {v12, v4}, Lcom/b/a/c/c/s$b;-><init>(Landroid/content/res/Resources;)V

    new-instance v13, Lcom/b/a/c/c/s$a;

    invoke-direct {v13, v4}, Lcom/b/a/c/c/s$a;-><init>(Landroid/content/res/Resources;)V

    new-instance v14, Lcom/b/a/c/d/a/c;

    move-object/from16 v0, p5

    invoke-direct {v14, v0}, Lcom/b/a/c/d/a/c;-><init>(Lcom/b/a/c/b/a/b;)V

    new-instance v15, Lcom/b/a/c/d/f/a;

    invoke-direct {v15}, Lcom/b/a/c/d/f/a;-><init>()V

    new-instance v16, Lcom/b/a/c/d/f/d;

    invoke-direct/range {v16 .. v16}, Lcom/b/a/c/d/f/d;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    move-object/from16 v18, v0

    const-class v19, Ljava/nio/ByteBuffer;

    new-instance v20, Lcom/b/a/c/c/c;

    invoke-direct/range {v20 .. v20}, Lcom/b/a/c/c/c;-><init>()V

    invoke-virtual/range {v18 .. v20}, Lcom/b/a/h;->a(Ljava/lang/Class;Lcom/b/a/c/d;)Lcom/b/a/h;

    move-result-object v18

    const-class v19, Ljava/io/InputStream;

    new-instance v20, Lcom/b/a/c/c/t;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/b/a/c/c/t;-><init>(Lcom/b/a/c/b/a/b;)V

    invoke-virtual/range {v18 .. v20}, Lcom/b/a/h;->a(Ljava/lang/Class;Lcom/b/a/c/d;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "Bitmap"

    const-class v20, Ljava/nio/ByteBuffer;

    const-class v21, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "Bitmap"

    const-class v20, Ljava/io/InputStream;

    const-class v21, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "Bitmap"

    const-class v20, Landroid/os/ParcelFileDescriptor;

    const-class v21, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "Bitmap"

    const-class v20, Landroid/content/res/AssetFileDescriptor;

    const-class v21, Landroid/graphics/Bitmap;

    invoke-static/range {p4 .. p4}, Lcom/b/a/c/d/a/w;->a(Lcom/b/a/c/b/a/e;)Lcom/b/a/c/k;

    move-result-object v22

    invoke-virtual/range {v18 .. v22}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v18

    const-class v19, Landroid/graphics/Bitmap;

    const-class v20, Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/b/a/c/c/v$a;->a()Lcom/b/a/c/c/v$a;

    move-result-object v21

    invoke-virtual/range {v18 .. v21}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "Bitmap"

    const-class v20, Landroid/graphics/Bitmap;

    const-class v21, Landroid/graphics/Bitmap;

    new-instance v22, Lcom/b/a/c/d/a/v;

    invoke-direct/range {v22 .. v22}, Lcom/b/a/c/d/a/v;-><init>()V

    invoke-virtual/range {v18 .. v22}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v18

    const-class v19, Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/b/a/h;->a(Ljava/lang/Class;Lcom/b/a/c/l;)Lcom/b/a/h;

    move-result-object v18

    const-string v19, "BitmapDrawable"

    const-class v20, Ljava/nio/ByteBuffer;

    const-class v21, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v22, Lcom/b/a/c/d/a/a;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v8}, Lcom/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/b/a/c/k;)V

    invoke-virtual/range {v18 .. v22}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v8

    const-string v18, "BitmapDrawable"

    const-class v19, Ljava/io/InputStream;

    const-class v20, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v21, Lcom/b/a/c/d/a/a;

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v9}, Lcom/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/b/a/c/k;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v8

    const-string v9, "BitmapDrawable"

    const-class v18, Landroid/os/ParcelFileDescriptor;

    const-class v19, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v20, Lcom/b/a/c/d/a/a;

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v7}, Lcom/b/a/c/d/a/a;-><init>(Landroid/content/res/Resources;Lcom/b/a/c/k;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v8, v9, v0, v1, v2}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v7

    const-class v8, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v9, Lcom/b/a/c/d/a/b;

    move-object/from16 v0, p4

    invoke-direct {v9, v0, v14}, Lcom/b/a/c/d/a/b;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/l;)V

    invoke-virtual {v7, v8, v9}, Lcom/b/a/h;->a(Ljava/lang/Class;Lcom/b/a/c/l;)Lcom/b/a/h;

    move-result-object v7

    const-string v8, "Gif"

    const-class v9, Ljava/io/InputStream;

    const-class v14, Lcom/b/a/c/d/e/c;

    new-instance v18, Lcom/b/a/c/d/e/j;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/b/a/h;->a()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v6, v2}, Lcom/b/a/c/d/e/j;-><init>(Ljava/util/List;Lcom/b/a/c/k;Lcom/b/a/c/b/a/b;)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v9, v14, v0}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v7

    const-string v8, "Gif"

    const-class v9, Ljava/nio/ByteBuffer;

    const-class v14, Lcom/b/a/c/d/e/c;

    invoke-virtual {v7, v8, v9, v14, v6}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v6

    const-class v7, Lcom/b/a/c/d/e/c;

    new-instance v8, Lcom/b/a/c/d/e/d;

    invoke-direct {v8}, Lcom/b/a/c/d/e/d;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Lcom/b/a/c/l;)Lcom/b/a/h;

    move-result-object v6

    const-class v7, Lcom/b/a/b/a;

    const-class v8, Lcom/b/a/b/a;

    invoke-static {}, Lcom/b/a/c/c/v$a;->a()Lcom/b/a/c/c/v$a;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v6

    const-string v7, "Bitmap"

    const-class v8, Lcom/b/a/b/a;

    const-class v9, Landroid/graphics/Bitmap;

    new-instance v14, Lcom/b/a/c/d/e/h;

    move-object/from16 v0, p4

    invoke-direct {v14, v0}, Lcom/b/a/c/d/e/h;-><init>(Lcom/b/a/c/b/a/e;)V

    invoke-virtual {v6, v7, v8, v9, v14}, Lcom/b/a/h;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v6

    const-class v7, Landroid/net/Uri;

    const-class v8, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7, v8, v5}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v6

    const-class v7, Landroid/net/Uri;

    const-class v8, Landroid/graphics/Bitmap;

    new-instance v9, Lcom/b/a/c/d/a/s;

    move-object/from16 v0, p4

    invoke-direct {v9, v5, v0}, Lcom/b/a/c/d/a/s;-><init>(Lcom/b/a/c/d/c/d;Lcom/b/a/c/b/a/e;)V

    invoke-virtual {v6, v7, v8, v9}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v5

    new-instance v6, Lcom/b/a/c/d/b/a$a;

    invoke-direct {v6}, Lcom/b/a/c/d/b/a$a;-><init>()V

    invoke-virtual {v5, v6}, Lcom/b/a/h;->a(Lcom/b/a/c/a/e$a;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/io/File;

    const-class v7, Ljava/nio/ByteBuffer;

    new-instance v8, Lcom/b/a/c/c/d$b;

    invoke-direct {v8}, Lcom/b/a/c/c/d$b;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/io/File;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/f$e;

    invoke-direct {v8}, Lcom/b/a/c/c/f$e;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/io/File;

    const-class v7, Ljava/io/File;

    new-instance v8, Lcom/b/a/c/d/d/a;

    invoke-direct {v8}, Lcom/b/a/c/d/d/a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/io/File;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/f$b;

    invoke-direct {v8}, Lcom/b/a/c/c/f$b;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/io/File;

    const-class v7, Ljava/io/File;

    invoke-static {}, Lcom/b/a/c/c/v$a;->a()Lcom/b/a/c/c/v$a;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    new-instance v6, Lcom/b/a/c/a/k$a;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lcom/b/a/c/a/k$a;-><init>(Lcom/b/a/c/b/a/b;)V

    invoke-virtual {v5, v6}, Lcom/b/a/h;->a(Lcom/b/a/c/a/e$a;)Lcom/b/a/h;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v5, v6, v7, v10}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6, v7, v12}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    const-class v7, Ljava/io/InputStream;

    invoke-virtual {v5, v6, v7, v10}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5, v6, v7, v12}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v11}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5, v6, v7, v13}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5, v6, v7, v13}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/net/Uri;

    invoke-virtual {v5, v6, v7, v11}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/e$c;

    invoke-direct {v8}, Lcom/b/a/c/c/e$c;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/e$c;

    invoke-direct {v8}, Lcom/b/a/c/c/e$c;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/u$c;

    invoke-direct {v8}, Lcom/b/a/c/c/u$c;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/u$b;

    invoke-direct {v8}, Lcom/b/a/c/c/u$b;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/u$a;

    invoke-direct {v8}, Lcom/b/a/c/c/u$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a/b$a;

    invoke-direct {v8}, Lcom/b/a/c/c/a/b$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a$c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/b/a/c/c/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/a$b;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/b/a/c/c/a$b;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a/c$a;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/b/a/c/c/a/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a/d$a;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/b/a/c/c/a/d$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/w$d;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/b/a/c/c/w$d;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/os/ParcelFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/w$b;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/b/a/c/c/w$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/content/res/AssetFileDescriptor;

    new-instance v8, Lcom/b/a/c/c/w$a;

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/b/a/c/c/w$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/x$a;

    invoke-direct {v8}, Lcom/b/a/c/c/x$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Ljava/net/URL;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a/e$a;

    invoke-direct {v8}, Lcom/b/a/c/c/a/e$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Ljava/io/File;

    new-instance v8, Lcom/b/a/c/c/k$a;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/b/a/c/c/k$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Lcom/b/a/c/c/g;

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/a/a$a;

    invoke-direct {v8}, Lcom/b/a/c/c/a/a$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, [B

    const-class v7, Ljava/nio/ByteBuffer;

    new-instance v8, Lcom/b/a/c/c/b$a;

    invoke-direct {v8}, Lcom/b/a/c/c/b$a;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, [B

    const-class v7, Ljava/io/InputStream;

    new-instance v8, Lcom/b/a/c/c/b$d;

    invoke-direct {v8}, Lcom/b/a/c/c/b$d;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/net/Uri;

    const-class v7, Landroid/net/Uri;

    invoke-static {}, Lcom/b/a/c/c/v$a;->a()Lcom/b/a/c/c/v$a;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/graphics/drawable/Drawable;

    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/b/a/c/c/v$a;->a()Lcom/b/a/c/c/v$a;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/c/o;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/graphics/drawable/Drawable;

    const-class v7, Landroid/graphics/drawable/Drawable;

    new-instance v8, Lcom/b/a/c/d/c/e;

    invoke-direct {v8}, Lcom/b/a/c/d/c/e;-><init>()V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/k;)Lcom/b/a/h;

    move-result-object v5

    const-class v6, Landroid/graphics/Bitmap;

    const-class v7, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Lcom/b/a/c/d/f/b;

    invoke-direct {v8, v4}, Lcom/b/a/c/d/f/b;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)Lcom/b/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/Bitmap;

    const-class v6, [B

    invoke-virtual {v4, v5, v6, v15}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)Lcom/b/a/h;

    move-result-object v4

    const-class v5, Landroid/graphics/drawable/Drawable;

    const-class v6, [B

    new-instance v7, Lcom/b/a/c/d/f/c;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-direct {v7, v0, v15, v1}, Lcom/b/a/c/d/f/c;-><init>(Lcom/b/a/c/b/a/e;Lcom/b/a/c/d/f/e;Lcom/b/a/c/d/f/e;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)Lcom/b/a/h;

    move-result-object v4

    const-class v5, Lcom/b/a/c/d/e/c;

    const-class v6, [B

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v6, v0}, Lcom/b/a/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/b/a/c/d/f/e;)Lcom/b/a/h;

    new-instance v8, Lcom/b/a/g/a/e;

    invoke-direct {v8}, Lcom/b/a/g/a/e;-><init>()V

    new-instance v4, Lcom/b/a/e;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/b/a/c;->h:Lcom/b/a/h;

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p2

    move/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lcom/b/a/e;-><init>(Landroid/content/Context;Lcom/b/a/c/b/a/b;Lcom/b/a/h;Lcom/b/a/g/a/e;Lcom/b/a/g/e;Ljava/util/Map;Lcom/b/a/c/b/j;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/b/a/c;->g:Lcom/b/a/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/b/a/c;
    .locals 2

    sget-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/b/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/b/a/c;->c(Landroid/content/Context;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Lcom/b/a/d;)V
    .locals 10

    const/4 v9, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/b/a/c;->i()Lcom/b/a/a;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/b/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_0
    new-instance v0, Lcom/b/a/e/e;

    invoke-direct {v0, v2}, Lcom/b/a/e/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/b/a/e/e;->a()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/b/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lcom/b/a/a;->a()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/e/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Glide"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "Glide"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppGlideModule excludes manifest GlideModule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    const-string v0, "Glide"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/e/c;

    const-string v5, "Glide"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered GlideModule from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/b/a/a;->b()Lcom/b/a/d/l$a;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Lcom/b/a/d;->a(Lcom/b/a/d/l$a;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/e/c;

    invoke-interface {v0, v2, p1}, Lcom/b/a/e/c;->a(Landroid/content/Context;Lcom/b/a/d;)V

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v2, p1}, Lcom/b/a/a;->a(Landroid/content/Context;Lcom/b/a/d;)V

    :cond_7
    invoke-virtual {p1, v2}, Lcom/b/a/d;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/e/c;

    iget-object v5, v4, Lcom/b/a/c;->h:Lcom/b/a/h;

    invoke-interface {v0, v2, v4, v5}, Lcom/b/a/e/c;->a(Landroid/content/Context;Lcom/b/a/c;Lcom/b/a/h;)V

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    iget-object v0, v4, Lcom/b/a/c;->h:Lcom/b/a/h;

    invoke-virtual {v3, v2, v4, v0}, Lcom/b/a/a;->a(Landroid/content/Context;Lcom/b/a/c;Lcom/b/a/h;)V

    :cond_9
    invoke-virtual {v2, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v4, Lcom/b/a/c;->a:Lcom/b/a/c;

    return-void

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/b/a/j;
    .locals 1

    invoke-static {p0}, Lcom/b/a/c;->e(Landroid/content/Context;)Lcom/b/a/d/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/d/l;->a(Landroid/content/Context;)Lcom/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/b/a/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/b/a/c;->b:Z

    invoke-static {p0}, Lcom/b/a/c;->d(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/b/a/c;->b:Z

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/b/a/d;

    invoke-direct {v0}, Lcom/b/a/d;-><init>()V

    invoke-static {p0, v0}, Lcom/b/a/c;->a(Landroid/content/Context;Lcom/b/a/d;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)Lcom/b/a/d/l;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Lcom/b/a/i/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/b/a/c;->a(Landroid/content/Context;)Lcom/b/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c;->g()Lcom/b/a/d/l;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/b/a/a;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Glide"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Glide"

    const-string v2, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/b/a/c;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/b/a/c/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/b/a/c/b/a/e;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/c;->e:Lcom/b/a/c/b/b/h;

    invoke-interface {v0, p1}, Lcom/b/a/c/b/b/h;->a(I)V

    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/b/a/c/b/a/e;

    invoke-interface {v0, p1}, Lcom/b/a/c/b/a/e;->a(I)V

    iget-object v0, p0, Lcom/b/a/c;->i:Lcom/b/a/c/b/a/b;

    invoke-interface {v0, p1}, Lcom/b/a/c/b/a/b;->a(I)V

    return-void
.end method

.method a(Lcom/b/a/j;)V
    .locals 3

    iget-object v1, p0, Lcom/b/a/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot register already registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method a(Lcom/b/a/g/a/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/g/a/h",
            "<*>;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/b/a/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/j;

    invoke-virtual {v0, p1}, Lcom/b/a/j;->b(Lcom/b/a/g/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/b/a/c/b/a/b;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->i:Lcom/b/a/c/b/a/b;

    return-object v0
.end method

.method b(Lcom/b/a/j;)V
    .locals 3

    iget-object v1, p0, Lcom/b/a/c;->l:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/b/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/b/a/c;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->g:Lcom/b/a/e;

    invoke-virtual {v0}, Lcom/b/a/e;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/b/a/d/d;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->k:Lcom/b/a/d/d;

    return-object v0
.end method

.method e()Lcom/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->g:Lcom/b/a/e;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/b/a/i/j;->a()V

    iget-object v0, p0, Lcom/b/a/c;->e:Lcom/b/a/c/b/b/h;

    invoke-interface {v0}, Lcom/b/a/c/b/b/h;->a()V

    iget-object v0, p0, Lcom/b/a/c;->d:Lcom/b/a/c/b/a/e;

    invoke-interface {v0}, Lcom/b/a/c/b/a/e;->a()V

    iget-object v0, p0, Lcom/b/a/c;->i:Lcom/b/a/c/b/a/b;

    invoke-interface {v0}, Lcom/b/a/c/b/a/b;->a()V

    return-void
.end method

.method public g()Lcom/b/a/d/l;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->j:Lcom/b/a/d/l;

    return-object v0
.end method

.method public h()Lcom/b/a/h;
    .locals 1

    iget-object v0, p0, Lcom/b/a/c;->h:Lcom/b/a/h;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-virtual {p0}, Lcom/b/a/c;->f()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/b/a/c;->a(I)V

    return-void
.end method
