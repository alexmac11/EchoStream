using Google.Apis.YouTube.v3.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace es.data
{
    public class GenericDataHandler<T> : IDataHandler<T> where T : class
    {
        protected readonly DataEntities _context;
        protected readonly DbSet<T> _dbSet;

        public GenericDataHandler(DataEntities context)
        {
            _context = context;
            _dbSet = _context.Set<T>();
        }

        public IEnumerable<T> GetAll() => _dbSet.ToList();

        public T GetById(object id) => _dbSet.Find(id);

        public int Count() => _dbSet.Count();

        public void Insert(T entity) => _dbSet.Add(entity);

        public void Update(T entity) => _context.Entry(entity).State = EntityState.Modified;

        public void Delete(T entity) => _dbSet.Remove(entity);

        public void DeleteById(object id) => _dbSet.Remove(GetById(id));

        public void Save() => _context.SaveChanges();
    }
}
